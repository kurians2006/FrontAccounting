<?php
/**********************************************************************
    Copyright (C) FrontAccounting, LLC.
	Released under the terms of the GNU General Public License, GPL, 
	as published by the Free Software Foundation, either version 3 
	of the License, or (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
    See the License here <http://www.gnu.org/licenses/gpl-3.0.html>.
***********************************************************************/
$page_security = 'SA_SALESALLOC';
$path_to_root = "../..";

include($path_to_root . "/includes/ui/allocation_cart.inc");
include_once($path_to_root . "/includes/session.inc");
include_once($path_to_root . "/includes/data_checks.inc");
include_once($path_to_root . "/includes/ui.inc");
include_once($path_to_root . "/sales/includes/sales_ui.inc");
include_once($path_to_root . "/sales/includes/sales_db.inc");
//include_once($path_to_root . "/sales/includes/ui/cust_alloc_ui.inc");

$js = "";
if ($use_popup_windows)
	$js .= get_js_open_window(900, 500);

add_js_file('allocate.js');
 
$trans = $_GET['trans_no'];

page(_($help_context = "Allocate Customer Payment or Credit Note"), false, false, "", $js);


//--------------------------------------------------------------------------------

function clear_allocations()
{
	if (isset($_SESSION['alloc']))
	{
		unset($_SESSION['alloc']->allocs);
		unset($_SESSION['alloc']);
	}
	//session_register('alloc');
}

/*function redirect_bridge($id, $type, $num){
	global $path_to_root;
	meta_forward($path_to_root . "/sales/allocations/bridge.php?id=".$id."&type=".$type."&no=".$num);
}*/

//--------------------------------------------------------------------------------

function edit_allocations_for_transaction($type, $trans_no){
	global $systypes_array;
	$cart = $_SESSION['alloc'];
	display_heading(sprintf(_("Allocation of %s # %d"), $systypes_array[$cart->type], $cart->trans_no));

    display_heading($cart->person_name);

    display_heading2(_("Date:") . " <b>" . $cart->date_ . "</b>");
   	display_heading2(_("Total:"). " <b>" . price_format($cart->bank_amount).' '.$cart->currency."</b>");

	if ($cart->currency != $cart->person_curr)
	{
	    $total = _("Total in clearing currency:") . " <b>" . price_format($cart->amount)."</b>"
	    	. sprintf(" %s (%s %s/%s)", $cart->person_curr, exrate_format($cart->bank_amount/$cart->amount), $cart->currency, $cart->person_curr);
    	display_heading2($total);
	}

    echo "<br>";

	start_form();
	div_start('alloc_tbl');

    if (count($cart->allocs) > 0)
    {
		show_allocatable(true);
		//ML Start
       	start_table();
    	//text_row_ex(_("Number: "), 'num', 10);
    	end_table();
    	br();
    	//ML End
       	submit_center_first('UpdateDisplay', _("Refresh"), _('Start again allocation of selected amount'), true);
       	submit('Process', _("Process"), true, _('Process allocations'), 'default');
   		submit_center_last('Cancel', _("Back to Allocations"),_('Abandon allocations and return to selection of allocatable amounts'), 'cancel');
	}
	else
	{
    	display_note(_("There are no unsettled transactions to allocate."), 0, 1);

   		submit_center('Cancel', _("Back to Allocations"), true,
			_('Abandon allocations and return to selection of allocatable amounts'), 'cancel');
    }
	div_end();
  	
  	end_form();
}

//--------------------------------------------------------------------------------

if (isset($_POST['Process']))
{
	//if ($_POST['num'] != NUll){//ML
		if (check_allocations() )
		{
			$_SESSION['alloc']->write();
			$_POST['Cancel'] = 1;
			//redirect_bridge($_SESSION['alloc']->trans_no, $_SESSION['alloc']->type, $_POST['num']);//ML
			clear_allocations();
		}
	//}//ML

	//else { //ML
		//display_error(_("You have not entered a collection receipt number"));//ML
		//set_focus('num');//ML
	//}//ML

}
//--------------------------------------------------------------------------------

if (isset($_POST['Cancel']))
{
	clear_allocations();
	meta_forward($path_to_root . "/sales/allocations/customer_allocation_main.php?");
}

//--------------------------------------------------------------------------------

if (isset($_GET['trans_no']) && isset($_GET['trans_type']))
{
	clear_allocations();
	$_SESSION['alloc'] = new allocation($_GET['trans_type'], $_GET['trans_no'], @$_GET['debtor_no'], PT_CUSTOMER);
}

if(get_post('UpdateDisplay'))
{
	$_SESSION['alloc']->read();
	$Ajax->activate('alloc_tbl');
}

if (isset($_SESSION['alloc']))
{
	edit_allocations_for_transaction($_SESSION['alloc']->type, $_SESSION['alloc']->trans_no);
}

//--------------------------------------------------------------------------------
end_page();

?>