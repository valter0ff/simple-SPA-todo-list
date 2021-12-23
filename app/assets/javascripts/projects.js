// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

function configuredFlatpickr(){
	$(".flatpickr").flatpickr({
		disableMobile: true,
		static: true,
		minDate: "today",
		wrap: true,
		onChange: function(selectedDates, dateStr, instance) {
			input = instance.input;
			form = input.parentElement;
			form.dispatchEvent(new Event('submit', {bubbles: true}));
    },
  });
};

$( document ).on('turbolinks:load', function() {configuredFlatpickr()});
