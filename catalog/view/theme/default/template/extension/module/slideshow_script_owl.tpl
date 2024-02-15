<script type="text/javascript">
    // Note.. it supports Animate.css
    // Manual Slider don't support animate css
    $('#slideshow<?= $module; ?>').owlCarousel({
        items: 1,
        <?php if (count($banners) > 1) { ?>
            loop: true,
        <?php } ?>

        autoplay: true,
        autoplayTimeout: 5000,
        
        smartSpeed: 450,
        
        nav: <?= $arrows; ?>,
        navText: ['<div class="slider-arrow slider-arrow-left"><i class="fa fa-angle-left"></div>', '<div class="slider-arrow slider-arrow-right"><i class="fa fa-angle-right"></i></div>'],
        
        dots: <?= $dots; ?>,
        dotsClass: 'slider-dots slider-custom-dots absolute position-bottom-left w100 list-inline text-center',
        
        //animateOut: 'slideOutDown',
        //animateIn: 'slideInDown',
    });
</script>