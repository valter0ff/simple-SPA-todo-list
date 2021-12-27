//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

function roundEdges(){
	$("ul>div>li:last-child").addClass("rounded-bottom").children().addClass("rounded-bottom");
  $('[id^="task_form_project"] > li').addClass("rounded-bottom");
};

function squareEdges(){
  $("ul>div>li").removeClass("rounded-bottom").children().removeClass("rounded-bottom");
};

function railsSort(){
	$('.sortable').railsSortable({
	  handle: $(".fa-unsorted").parent(),
		update: function( event, ui ) {
			squareEdges();
			roundEdges();
		}
	});

};

$( document ).on('turbolinks:load', function() {
  roundEdges();
  railsSort();
  $('.task-text').children('span').click(function(){
  $(this).toggleClass('truncate-text');
  });
})
