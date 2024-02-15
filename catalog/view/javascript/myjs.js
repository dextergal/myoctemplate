$(document).ready(function() {
    $('.popup-div').magnificPopup({
      type: 'inline',
      closeOnBgClick: false 
    });

    var height = $('.fixed-header').innerHeight();
    $('.header-same-height').css('min-height', height);
    $('.sort-cat').css('top', height);
});
$( window ).resize(function() {
  var height = $('.fixed-header').innerHeight();
  $('.header-same-height').css('min-height', height);
  $('.sort-cat').css('top', height);
});

  
  $(document).on("submit","#enquiry-form",function(e) {
    e.preventDefault(); 

    var form = $(this),
      url  = form.attr('action'),
      type = form.attr('method');
      
      form.find('.text-danger').remove();//reset the error 
    $.ajax({
       type: type,
       url: url,
       data: form.serialize(), // serializes the form's elements.
       dataType: 'json',
    beforeSend: function() {
      $('body').loadingModal({
        position: 'auto',
        text: 'Loading...',
        color: '#5e5e5e',
        opacity: '1',
        animation: 'wave'
      });
    },
       success: function(result)
       {
          $('body').loadingModal('hide');
          $('body').loadingModal('destroy');
             
             if(result['success'] == 1){ 
                 // $('#enquiry-modal').modal('hide');
                 parent.$('.mfp-close').trigger("click");
                 form.trigger('reset');//reset data after send
               swal({
                  title: result['success_title'],
                  html: result['success_msg'],
                  type: "success"
                });
            window.location='index.php?route=information/contact/success'
             }else{
               if(typeof(result['error']) != "undefined" && result['error'] !== null)  {
            
            $.each(result['error'], function( index, value ) {
              $('.error_'+index).append('<div class="text-danger">'+value+'</div>');
            });
               }else{
                   alert('Something went wrong please refresh the page and try again.'); // show response from the php script.
               }
             }
       }
    });
  });
