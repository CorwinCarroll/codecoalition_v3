// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require foundation
//= require flexy-menu
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

$(function() {
    var timer;

    $(window).resize(function() {
        clearTimeout(timer);
        timer = setTimeout(function() {
            $('.inner-wrap').css("min-height", $(window).height() + "px" );
        }, 40);
    }).resize();
});

//deep linking
if(window.location.hash){
    $('dl.tabs dd a').each(function(){
        var hash = '#' + $(this).attr('href').split('#')[1];
        if(hash == window.location.hash){
            $(this).click();
        }
    });
}

