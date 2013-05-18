// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


$(function() {

	$("#user_vehicle_vehicle_types").change(function () {
	$("#user_vehicle_vehicle_types option:selected").each(function () {
	var selected_vehicle=$(this).text();
	if(selected_vehicle == "Bus"){
	    $("#bus_stop").show();
	}else
	{
		$("#bus_stop").hide();
	}
	})

	})

	$("#refused_checkbox").click(function(){
		$("#refused_from_to").slideToggle();

	})

	


});