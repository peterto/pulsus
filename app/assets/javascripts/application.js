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
		var button_for_form = "<input class='button' type='submit' value ='answer' /><br />"
		
		$.get( url, function (data){
			var question = data[Math.floor( Math.random() * data.length )];

			$('.answer').append( question.title + '<br />' + form_1 + form_2 + form_3 + form_4 + form_5 + button_for_form );
		
		});	
		
		var answers_url = 'answers.json';
		var $form = $(this).find('input[name="answer"]').serialize();
		console.log($form);
		// $.post ( answers_url, )
		
	});
});

$(document).ready(function() {  
 
    //select all the a tag with name equal to modal
    $('a[name=modal]').click(function(e) {
        //Cancel the link behavior
        e.preventDefault();
        //Get the A tag
        var id = $(this).attr('href');
     
        //Get the screen height and width
        var maskHeight = $(document).height()/2;
        var maskWidth = $(window).width()/2;
        // var maskHeight = 400px;
        // var maskWidth = 200px;
     
        //Set height and width to mask to fill up the whole screen
        $('#mask').css({'width':maskWidth,'height':maskHeight});
         
        //transition effect     
        $('#mask').fadeIn(1000);    
        $('#mask').fadeTo("slow",0.8);  
     
        //Get the window height and width
        var winH = $(window).height();
        var winW = $(window).width();
               
        //Set the popup window to center
        $(id).css('top',  winH/2-$(id).height());
        $(id).css('left', winW/2-$(id).width());
     
        //transition effect
        $(id).fadeIn(2000); 
     
    });
     
    //if close button is clicked
    $('.window .close').click(function (e) {
        //Cancel the link behavior
        e.preventDefault();
        $('#mask, .window').hide();
    });     
     
    //if mask is clicked
    $('#mask').click(function () {
        $(this).hide();
        $('.window').hide();
    });         
     
});