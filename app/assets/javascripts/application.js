// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .

// $(function() {
//  $('span').click(function() {
//   if ($(this).attr('class') == 'selected') {
//
//     $ (this).removeClass('selected').next('.query').slideUp('fast');
//   } else {
//
//     $('span').removeClass('selected');
//     $('.query').hide();
//
//     $(this).addClass('selected').next('.query').slideDown('fast');
//   }
// });
//
//
// $('span, .query').hover(function(){
//   over_flg = true;
// }, function() {
//   over_flg = false;
// });
//
//
// $('body').click(function() {
//   if (over_flg == false) {
//     $('span').removeClass('selected');
//     $('.query').slideUp('fast');
//   }
//  });
// });

//アコーディオン
// $(function(){
//   #menuの中のp要素がクリックされたら
//   $('#menu p').click(function(){
//     クリックされた#menuの中のp要素に隣接するul要素がクリックされたら
//     $(this).next('ul').slideToggle();
//   });
//   #menuの中の.innerの中のli要素の中のp要素がクリックされたら
//   $('#menu .inner li p').click(function(){
//     クリックされた#menuのなかの.innerの中のli要素の中のp要素の子要素のul要素が開いたり閉じたりする。
//   $(this).children('ul').slideToggle();
//  });
// });



//ajax
// $(function(){
//   $(document).on('click', 'input[type=submit]', function(){
//     if ($('input[type=text]').val() == ''){
//       return false;
//     }
//   });
//   $(document).on('ajax: success', 'form', function(e){
//     $('#post_comment').val('');
//     $('.post_wrpper').prepend('<p>' + e.detail[0] + '</p>');
//   });
// });
