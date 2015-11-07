<?php
require_once 'Zend/Server/Interface.php';

class Zend_Json_Server implements Zend_Server_Interface
{
    /**#@+
     * Version Constants
     * @const string
     */
    const VERSION_1 = '1.0';
    const VERSION_2 = '2.0';
    /**#@-*/

    /**
     * Flag: whether or not to auto-emit the response
     * @var bool
     */
    protected $_autoEmitResponse = true;

    /**
     * Attached methods
     * @var array
     */
    protected $_methods = array();

    /**
     * Request object
     * @var Zend_Json_Server_Request
     */
    protected $_request;

    /**
     * Response object
     * @var Zend_Json_Server_Response
     */
    protected $_response;

    /**
     * SMD object
     * @var Zend_Json_Server_Smd
     */
    protected $_serviceMap;

    /**
     * SMD class accessors
     * @var array
     */
    protected $_smdMethods;

    /**
     * Attach a function or callback to the server
     * 
     * @param  string|array $function Valid PHP callback
     * @param  string $namespace  Ignored
     * @return Zend_Json_Server
     */
    public function addFunction($function, $namespace = '')
    {
        if (!is_string($function) && (!is_array($function) || (2 > count($function)))) {
            require_once 'Zend/Json/Server/Exception.php';
            throw new Zend_Json_Server_Exception('Unable to attach function; invalid');
        }

        if (!is_callable($function)) {
            require_once 'Zend/Json/Server/Exception.php';
            throw new Zend_Json_Server_Exception('Unable to attach function; does not exist');
        }

        require_once 'Zend/Server/Reflection.php';        
        if (is_string($function)) {
            $method = Zend_Server_Reflection::reflectFunction($function);
        } else {
            $class  = array_shift($function);
            $action = array_shift($function);
            $reflection = Zend_Server_Reflection::reflectClass($class);
            $methods = $reflection->getMethods();
            $found   = false;
            foreach ($methods as $method) {
                if ($action == $method->getName()) {
                    $found = true;
                    break;
                }
            }
            if (!$found) {
                $this->fault('Method not found', -32601);
                return $this;
            }
        }

        $this->_methods[$method->getName()] = $method;

        $this->_addMethodServiceMap($method);

        return $this;
    }

    /**
     * Register a class with the server
     * 
     * @param  string $class 
     * @param  string $namespace Ignored
     * @param  mixed $argv Ignored
     * @return Zend_Json_Server
     */
    public function setClass($class, $namespace = '', $argv = null)
    {
        require_once 'Zend/Server/Reflection.php';
        $reflection = Zend_Server_Reflection::reflectClass($class);
        foreach ($reflection->getMethods() as $method) {
            $this->_methods[$method->getName()] = $method;
            $this->_addMethodServiceMap($method);
        }
        return $this;
    }

    /**
     * Indicate fault response
     * 
     * @param  string $fault 
     * @param  int $code 
     * @return false
     */
    public function fault($fault = null, $code = 404, $data = null)
    {
        require_once 'Zend/Json/Server/Error.php';
        $error = new Zend_Json_Server_Error($fault, $code, $data);
        $this->getResponse()->setError($error);
        return $error;
    }

    /**
     * Handle request
     * 
     * @param  Zend_Json_Server_Request $request 
     * @return null|Zend_Json_Server_Response
     */
    public function handle($request = false)
    {
        if ((false !== $request) && (!$request instanceof Zend_Json_Server_Request)) {
            require_once 'Zend/Json/Server/Exception.php';
            throw new Zend_Json_Server_Exception('Invalid request type provided; cannot handle');
        } elseif ($request) {
            $this->setRequest($request);
        }

        // Handle request
        $this->_handle();

        // Get response
        $response = $this->_getReadyResponse();

        // Emit response?
        if ($this->autoEmitResponse()) {
            echo $response;
            return;
        }

        // or return it?
        return $response;
    }

    /**
     * Return list of attached methods
     * 
     * @return array
     */
    public function getFunctions()
    {
        return $this->_methods;
    }

    public function loadFunctions($definition)
    {
    }

    public function setPersistence($mode)
    {
    }

    /**
     * Set request object
     * 
     * @param  Zend_Json_Server_Request $request 
     * @return Zend_Json_Server
     */
    public function setRequest(Zend_Json_Server_Request $request)
    {
        $this->_request = $request;
        return $this;
    }

    /**
     * Get JSON-RPC request object
     * 
     * @return Zend_Json_Server_Request
     */
    public function getRequest()
    {
        if (null === ($request = $this->_request)) {
            require_once 'Zend/Json/Server/Request/Http.php';
            $this->setRequest(new Zend_Json_Server_Request_Http());
        }
        return $this->_request;
    }

    /**
     * Set response object
     * 
     * @param  Zend_Json_Server_Response $response 
     * @return Zend_Json_Server
     */
    public function setResponse(Zend_Json_Server_Response $response)
    {
        $this->_response = $response;
        return $this;
    }

    /**
     * Get response object
     * 
     * @return Zend_Json_Server_Response
     */
    public function getResponse()
    {
        if (null === ($response = $this->_response)) {
            require_once 'Zend/Json/Server/Response/Http.php';
            $this->setResponse(new Zend_Json_Server_Response_Http());
        }
        return $this->_response;
    }

    /**
     * Set flag indicating whether or not to auto-emit response
     * 
     * @param  bool $flag 
     * @return Zend_Json_Server
     */
    public function setAutoEmitResponse($flag)
    {
        $this->_autoEmitResponse = (bool) $flag;
        return $this;
    }

    /**
     * Will we auto-emit the response?
     * 
     * @return bool
     */
    public function autoEmitResponse()
    {
        return $this->_autoEmitResponse;
    }

    // overloading for SMD metadata
    /**
     * Overload to accessors of SMD object
     * 
     * @param  string $method 
     * @param  array $args 
     * @return mixed
     */
    public function __call($method, $args)
    {
        if (preg_match('/^(set|get)/', $method, $matches)) {
            if (in_array($method, $this->_getSmdMethods())) {
                if ('set' == $matches[1]) {
                    $value = array_shift($args);
                    $this->getServiceMap()->$method($value);
                    return $this;
                } else {
                    return $this->getServiceMap()->$method();
                }
            }
        }
        return null;
    }

    /**
     * Retrieve SMD object
     * 
     * @return Zend_Json_Server_Smd
     */
    public function getServiceMap()
    {
        if (null === $this->_serviceMap) {
            require_once 'Zend/Json/Server/Smd.php';
            $this->_serviceMap = new Zend_Json_Server_Smd();
        }
        return $this->_serviceMap;
    }

    /**
     * Add service method to service map
     * 
     * @param  Zend_Server_Reflection_Function $method 
     * @return void
     */
    protected function _addMethodServiceMap(Zend_Server_Reflection_Function_Abstract $method)
    {
        $serviceInfo = array(
            'name'   => $method->getName(),
            'return' => $this->_getReturnType($method),
        );
        $params = $this->_getParams($method);
        $serviceInfo['params'] = $params;
        $serviceMap = $this->getServiceMap();
        if (false !== $serviceMap->getService($serviceInfo['name'])) {
            $serviceMap->removeService($serviceInfo['name']);
        }
        $serviceMap->addService($serviceInfo);
    }

    /**
     * Get method param type
     * 
     * @param  Zend_Server_Reflection_Function_Abstract $method 
     * @return string|array
     */
    protected function _getParams(Zend_Server_Reflection_Function_Abstract $method)
    {
        $params = array();
        foreach ($method->getPrototypes() as $prototype) {
            foreach ($prototype->getParameters() as $key => $parameter) {
                if (!isset($params[$key])) {
                    $params[$key] = array(
                        'type'     => $parameter->getType(),
                        'name'     => $parameter->getName(),
                        'optional' => $parameter->isOptional(),
                    );
                    if ($parameter->isDefaultValueAvailable()) {
                        $params[$key]['default'] = $parameter->getDefaultValue();
                    } else {
                    }
                    $description = $parameter->getDescription();
                    if (!empty($description)) {
                        $params[$key]['description'] = $description;
                    }
                    continue;
                }
                $newType = $parameter->getType();
                if (!is_array($params[$key]['type'])) {
                    if ($params[$key]['type'] == $newType) {
                        continue;
                    }
                    $params[$key]['type'] = (array) $params[$key]['type'];
                } elseif (in_array($newType, $params[$key]['type'])) {
                    continue;
                }
                array_push($params[$key]['type'], $parameter->getType());
            }
        }
        return $params;
    }

    /**
     * Get method return type
     * 
     * @param  Zend_Server_Reflection_Function_Abstract $method 
     * @return string|array
     */
    protected function _getReturnType(Zend_Server_Reflection_Function_Abstract $method)
    {
        $return = array();
        foreach ($method->getPrototypes() as $prototype) {
            $return[] = $prototype->getReturnType();
        }
        if (1 == count($return)) {
            return $return[0];
        }
        return $return;
    }

    /**
     * Retrieve list of allowed SMD methods for proxying
     * 
     * @return array
     */
    protected function _getSmdMethods()
    {
        if (null === $this->_smdMethods) {
            $this->_smdMethods = array();
            require_once 'Zend/Json/Server/Smd.php';
            $methods = get_class_methods('Zend_Json_Server_Smd');
            foreach ($methods as $key => $method) {
                if (!preg_match('/^(set|get)/', $method)) {
                    continue;
                }
                if (strstr($method, 'Service')) {
                    continue;
                }
                $this->_smdMethods[] = $method;
            }
        }
        return $this->_smdMethods;
    }

    /**
     * Internal method for handling request
     * 
     * @return void
     */
    protected function _handle()
    {
        $request = $this->getRequest();

        if (!$request->isMethodError() && (null === $request->getMethod())) {
            return $this->fault('Invalid Request', -32600);
        }

        if ($request->isMethodError()) {
            return $this->fault('Invalid Request', -32600);
        }

        $method = $request->getMethod();
        if (!array_key_exists($method, $this->_methods)) {
            return $this->fault('Method not found', -32601);
        }

        $params        = $request->getParams();
        $invocable     = $this->_methods[$method];
        $serviceMap    = $this->getServiceMap();
        $service       = $serviceMap->getService($method);
        $serviceParams = $service->getParams();

        if (count($params) < count($serviceParams)) {
            $params = $this->_getDefaultParams($params, $serviceParams);
        }

        try {
            $result = $this->_dispatch($invocable, $params);
        } catch (Exception $e) {
            return $this->fault($e->getMessage(), $e->getCode());
        }

        $this->getResponse()->setResult($result);
    }

    /**
     * Get default params from signature
     * 
     * @param  array $args 
     * @param  array $params 
     * @return array
     */
    protected function _getDefaultParams(array $args, array $params)
    {
        $defaultParams = array_slice($params, count($args));
        foreach ($defaultParams as $param) {
            $value = null;
            if (array_key_exists('default', $param)) {
                $value = $param['default'];
            }
            array_push($args, $value);
        }
        return $args;
    }

    /**
     * Dispatch method
     * 
     * @param  Zend_Server_Reflection_Function_Abstract $invocable 
     * @param  array $params 
     * @return mixed
     */
    protected function _dispatch(Zend_Server_Reflection_Function_Abstract $invocable, array $params)
    {
        if ($invocable instanceof Zend_Server_Reflection_Function) {
            $function = $invocable->getName();
            return call_user_func_array($function, $params);
        }

        $class = $invocable->getDeclaringClass();
        $object = $class->newInstance();
        return $invocable->invokeArgs($object, $params);
    }

    /**
     * Set response state
     * 
     * @return Zend_Json_Server_Response
     */
    protected function _getReadyResponse()
    {
        $request  = $this->getRequest();
        $response = $this->getResponse();

        $response->setServiceMap($this->getServiceMap());
        if (null !== ($id = $request->getId())) {
            $response->setId($id);
        }
        if (null !== ($version = $request->getVersion())) {
            $response->setVersion($version);
        }

        return $response;
    }
}
