
// $( window ).on("load", function() {
//     $(".loader").delay(2000).fadeOut("slow");
//     $("#loaderOverlay").delay(2000).fadeOut("slow");
// });

const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))




$(document).ready(function () {
  


  // $(window).scroll(function() {
  //   if ($(this).scrollTop() > 0.1){
  //     $('.site-header').addClass("fixed");      
  //   }
  //     else{$('.site-header').removeClass("fixed");
  //   }
  // });



  // mean menu
  $('.main-nav').meanmenu({
    meanMenuContainer: '.main-nav-wrap',
    onePage:true,
  });


  // $('.parallax-sec-height').height($('.parallax-sec').outerHeight());
  


  // $('.bulk-content-sec table').wrap('<div class="table-responsive"></div>');


  // var goToTopBtn = $('.go-to-top');
  // $(window).scroll(function() {
  //   if ($(window).scrollTop() > 300) {
  //     goToTopBtn.addClass('show');
  //   } else {
  //     goToTopBtn.removeClass('show');
  //   }
  // });

  // goToTopBtn.on('click', function(e) {
  //   e.preventDefault();
  //   $('html, body').animate({scrollTop:0}, '300');
  // });




// AOS.init();


// parallaxInit('.parallax')

    $('.analysisSeasonSelect2').select2();
    // new DataTable('#productList');
    $('#productList').DataTable({
      autoWidth:false,
      scrollX:true,
      scrollY:450,
      fixedColumns: {
        left: 2,
        right: 2,
      },
      // columnDefs: [
      //    { orderable: false, targets: -1 }
      // ],
      // scrollCollapse: true,
    })
    // $('#categoryList').DataTable({
    //   "autoWidth":false,
    //   columnDefs: [
    //      { orderable: false, targets: -1 }
    //   ],
    // })


});


$(window).on('load', function() {
  var headerHeight = $('.site-header').outerHeight();
  var footerHeight = $('.site-footer').outerHeight();
  $('.site-main').css('min-height', 'calc(100vh - ' + (headerHeight + footerHeight) + 'px)');
});

