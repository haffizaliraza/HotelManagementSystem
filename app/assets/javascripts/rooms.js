$(document).on('turbolinks:load', function(){

	$('.datatable').DataTable({

	});	
});	

$(document).on('turbolinks:load', function(){

$("#booking_bill , #booking_other_charges").keyup(function(){
	var bill = $("#booking_bill").val();
	var other_charges = $("#booking_other_charges").val();
	$("#booking_total").val(parseInt(bill) + parseInt(other_charges));

})
	

})


