$(function() {

    //settings for slider
    var width = 370;
    var animationSpeed = 1000;
    var pause = 3000;
    var currentSlide = 1;
    var margin = 0;

    var $slider = $('#slider');
    var $slideContainer = $('.slides', $slider);
    var $slides = $('.slide', $slider);
    var length = $slides.length;

    var interval;

    function Slider() {
            $slideContainer.animate({'margin-left': margin}, animationSpeed, function() {
                if (currentSlide === length) {
                    currentSlide = 1;
                    margin=0;
                    $slideContainer.css('margin-left', 0);
                }
            });
        }
    function beginSlider() { 
            interval = setInterval(function() {
              margin -= width; 
              currentSlide++; 
              Slider() 
            }, pause);
        }
    function stop(){
        clearInterval(interval); 
        Slider(); 
        beginSlider(); 
    }
    function nextSlide(e) {
        if (currentSlide < length){  
        margin -= width; 
        currentSlide++; 
        }
        stop(); 
        e.preventDefault();
    }
    function previousSlide(e) {
        if (currentSlide > 1) { 
          currentSlide--; 
        } else {
          margin = -width * (length - 1);
          $slideContainer.css('margin-left', margin);
          currentSlide = (length - 1) 
        }
        margin += width; 
        stop();
        e.preventDefault();
    }
    $(".previousLink").on("click", previousSlide);
    $(".nextLink").on("click", nextSlide);

});