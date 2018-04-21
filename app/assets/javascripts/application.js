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
// require_tree .
//= require bootstrap.min
//= require charts
//= require colors
//= require filters
//= require global
//= require idangerous.swiper.min
//= require isotope.pkgd.min
//= require jqColorPicker
//= require jquery.canvasjs.min
//= require jquery.countTo
//= require jquery.easy-autocomplete.min
//= require jquery.mixitup
//= require jquery.viewportchecker.min
//= require jquery-2.1.4.min
//= require jquery-ui.js
//= require jquery-ui.min
//= require magnific.js
//= require map
//= require script
//= require sorttable
//= require wow

function reset($comenId) {
    $( $comenId ).prop( "disabled", true );
    $( $comenId).val("null");
}
