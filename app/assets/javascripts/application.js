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
//= require_tree .
$(function() {
	$('#test').on('click', function(e){
		e.preventDefault();
		var url = 'questions.json'
		
		var form_1 = "<input type='radio' name='answer'' value='1'>Very Inaccurate</input> "
		var form_2 = "<input type='radio' name='answer' value='2'>Moderately Inaccurate</input> "
		var form_3 = "<input type='radio' name='answer' value='3'>Neither Accurate Nor Inaccurate</input> "
		var form_4 = "<input type='radio' name='answer' value='4'>Moderately Accurate</input> "
		var form_5 = "<input type='radio' name='answer' value='5'>Very Accurate</input><br />"
		var button_for_form = "<input class='button' type='submit' value ='answer question' /><br />"
		
		$.get( url, function (data){
			var question = data[Math.floor( Math.random() * data.length )];

			$('.question').append( question.title + '<br />' + form_1 + form_2 + form_3 + form_4 + form_5 + button_for_form );
		
		});	
		
	});
});