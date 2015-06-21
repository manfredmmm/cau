//= require jquery
//= require jquery_ujs
//= require cocoon
//= require jquery/jquery.min
//= require lightbox
//= require jquery.superslides.min
//= require jquery.easing.1.3
//= require jquery.animate-enhanced.min
//= require ckeditor/init
//= require jquery-dropdown/jquery.dropdown.min
//= require_tree .

$(function () {
    "use strict";

    $('#slides').superslides({
        slide_speed: '1000',
        slide_easing: 'easeInOutCubic',
        pagination: false,
        hashchange: true,
        scrollable: false
    });

    var MenuController;

    MenuController = function () {
        this.navigationEl = $('nav#menu');
        this.navigationEl.on("click", "a:not(.submenu)", $.proxy(this.chooseSection, this));

        $('a.home img').hide();
        $('a.top').hide();
        $(window).scroll(function () {
            if ($(window).scrollTop() < ($(this).height() - 30)) {
                $('header').removeClass('fixed');
                $('a.home img').fadeOut();
                $('a.top').fadeOut();
            } else {
                $('header').addClass('fixed');
                $('a.home img').fadeIn();
                $('a.top').fadeIn();
            }
        });

        $('a.top').on('click', function (event) {
            $('html, body').animate({
                scrollTop: 0
            }, 1000);
            event.preventDefault();
        });
    };

    MenuController.prototype.chooseSection  = function (event) {
        var sectionId = $(event.currentTarget).attr('href');
        $('html, body').animate({
            scrollTop: ($(sectionId).offset().top - 50)
        }, 1000);
        event.preventDefault();
    };

    window.menuController = new MenuController();

    // Dropdown behaviour
    $('ul.dropdown-menu a').on('click', function (e) {
        var sectionId = $(this).attr('href');

        $('html, body').animate({
            scrollTop: ($(sectionId).offset().top - 50)
        }, 1000);

        e.preventDefault();
    });

    var windowHeight = $(window).height();
    if ($(window).scrollTop() < 100) {
        $('#dropdown-1').on('show', function(event, dropdownData) {
            $('.dropdown.dropdown-tip').addClass('top');
            $('.dropdown.dropdown-tip').css('top', windowHeight - 208);
        });
    }

    $(window).scroll(function () {
        $('.dropdown.dropdown-tip').css('top', 'initial');
        if ($(window).scrollTop() < 100) {
            $('#dropdown-1').on('show', function(event, dropdownData) {
                $('.dropdown.dropdown-tip').addClass('top');
                $('.dropdown.dropdown-tip').css('top', windowHeight - 167);
                $('li.submenu a').addClass('dropdown-open');
            });
        } else {
            $('#dropdown-1').on('show', function(event, dropdownData) {
                $('.dropdown.dropdown-tip').removeClass('top');
                if ($('header.fixed').length) {
                    $('.dropdown.dropdown-tip').css('top', $(window).scrollTop() + 32);
                    $('li.submenu a').addClass('dropdown-open');
                } else {
                    $('.dropdown.dropdown-tip').css('top', $(window).height() - 8);
                    $('li.submenu a').addClass('dropdown-open');
                }
            });
        }
    });

    $('li.submenu, #dropdown-1').hover(
        function () {
            $('a.submenu').click();
        },
        function () {
            $('a.submenu').click();
        }
    );
});
