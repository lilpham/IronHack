// Write your Pizza Builder JavaScript in this file.
$(document).ready(function(){

var price = 21
// $('.total').html("$" + price);

// $(".btn").on('click', function(){
// 	$('.total').html("$" + price);
// });
$('.total').html("$" + price);
	$('.btn-pepperonni').on('click', function(){
		$('.pep').toggle();
		$('.btn-pepperonni').toggleClass('active')
			if ($('.btn-pepperonni').hasClass('active')) {	
				 price += 1;
				 $('.lipep').show();
				 
		}	else{
				price -= 1;
				$('.lipep').hide();
		};
		$('.total').html("$" + price);		
	});


	$('.btn-mushrooms').on('click', function(){
		$('.mushroom').toggle();
		$('.btn-mushrooms').toggleClass('active');
			if ($('.btn-mushrooms').hasClass('active')) {	
				 price += 1;
				 $('.limush').show();
				 
		}	else{
				price -= 1;
				$('.limush').hide();
		};
		$('.total').html("$" + price)	
	});

	$('.btn-green-peppers').on('click', function(){
		$('.green-pepper').toggle();
			$('.btn-green-peppers').toggleClass('active');
			if ($('.btn-green-peppers').hasClass('active')) {	
				 price += 1;
				 $('.ligreen').show();
				 
		}	else{
				price -= 1;
				$('.ligreen').hide();
		};
		$('.total').html("$" + price)	
	});

	$('.btn-sauce').on('click', function(){
		$('.sauce').toggleClass('sauce-white');
		$('.btn-sauce').toggleClass('active');
			if ($('.btn-sauce').hasClass('active')) {	
				 price += 3;
				 $('.liwhite').show();
				 
		}	else{
				price -= 3;
				$('.liwhite').hide();
		};
		$('.total').html("$" + price)	
	});

	$('.btn-crust').on('click', function(){
		$('.crust').toggleClass('crust-gluten-free');
		$('.btn-crust').toggleClass('active');
			if ($('.btn-crust').hasClass('active')) {	
				 price += 5;
				 $('.ligluten').show();
				 
		}	else{
				price -= 5;
				$('.ligluten').hide();
		};	
		$('.total').html("$" + price)
	});
//When pepperonni button is clicked $1 is added to price ($10) and changes price to $11.

// var price = 10
$('.total').html("$" + price);

});

