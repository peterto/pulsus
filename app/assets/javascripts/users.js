$(function() {
	$("form#new_url").on('submit', function(e){
		e.preventDefault();
		
		var $form = $(this),
			values = $form.find('input[name="url[url_path]"]').val();
		
		var url = "users.json";
		
		// $('.controls').after("<p>"+values+"</p>");
		
		$.post( "urls.json", $(this).serialize(), function(data){
			// alert(data._id);
			console.log(data._id);
			
			$('.controls').after("<p>"+data._id+"</p>");
			
		});
	
		
		
	});
});