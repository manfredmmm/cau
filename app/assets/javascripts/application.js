/*global $, window*/

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require cocoon

$(function () {
    "use strict";

    var MenuController;

    MenuController = function () {
        this.navigationEl = $('nav#menu');
        this.navigationEl.on("click", "a", $.proxy(this.chooseSection, this));

        $('footer').hide();
        $(window).scroll(function () {
            if ($(window).scrollTop() < 500) {
                $('header').removeClass('fixed');
                $('footer').hide();
            } else {
                $('header').addClass('fixed');
                $('footer').show();
            }
        });
    };

    MenuController.prototype.chooseSection  = function (event) {
        var sectionId = $(event.currentTarget).attr('href');
        $('html, body').animate({
            scrollTop: ($(sectionId).offset().top - 116)
        }, 1250);
        event.preventDefault();
    };

    window.menuController = new MenuController();
});
