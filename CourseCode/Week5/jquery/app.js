$(document).ready(function ()
{
	

	// $(".unicorn-mode").on('click', function(){
	//         $('.btn').show();

	//         $('.unicorn-mode').show().slideToggle();
	// });

	$('.hello-button').on('click', function () {
	        alert('hello world')

	        $("body").prepend("<h1> ALLLLOO </h1>");
	});

	$(".hello-button").on('click', function(){
	        $('.btn').slideToggle();

	        $('.hello-button').show().slideToggle();
	});

	$('.empanadas').on('click', function () {
	      alert('you love empanadas?')

	      $("body").append("<h1> EMPANADAS </h1>");
	});

	$('.js-pizza').on('click', function () {
	      alert('YUMMMY')

	      $("p").before("<h1> YUMMY </h1>");
	});

	$('#ice-cream').on('click', function () {
	      alert('ohh yaasss')

	      $("p").before("<h1> OHH YAZZ </h1>");
	});	

	$('js-like-button').on('click', function(){

		if($ ('js-like-button').hasClass('btn-success') ) {
			$('js-like-button').html("Like")
		}

		else {
			$('js-like-button').html("Liked +1")
		}

		$('js-like-button').toggleClass("btn-default");
		$('js-like-button').toggleClass("btn-success");
	});

	var price = '<p>Only $399.99</p>';
		$('.container').append(price);
});

