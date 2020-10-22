//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


function roundEdges(){
	$("ul>div>li:last-child").addClass("rounded-bottom").children().addClass("rounded-bottom")
};
function railsSort(){
	$('.sortable').railsSortable({
	  handle: $(".fa-unsorted").parent(),
		update: function( event, ui ) {
			$("ul>div>li").removeClass("rounded-bottom").children().removeClass("rounded-bottom");
			roundEdges();
			}
	});
	
};

$(document).ready(railsSort);
$(document).ready(roundEdges);
