$(document).ready(function () {
    $('.header-btn').click(function () {
        if ($(this).is('.active')) {
            return;
        }

        if ($(this).is('.header-reservation-btn')) {
            location.replace('/main/reservation');
        }
        if ($(this).is('.header-shop-btn')) {
            location.replace('/main/shop');
        }
        if ($(this).is('.header-customer-btn')) {
            location.replace('/main/customer');
        }
        if ($(this).is('.header-sale-btn')) {
            location.replace('/main/sale');
        }
        if ($(this).is('.header-cs-btn')) {
            location.replace('/main/cs');
        }
        if ($(this).is('.header-analysis-btn')) {
            location.replace('/main/analysis');
        }
        if ($(this).is('.header-config-btn')) {
            location.replace('/main/config');
        }
    });

    $('.left-nav-menu').click(function () {
        console.log("aa");
        if ($(this).is('.active')) {
            return;
        }

        if ($(this).is('.shop-info')) {
            location.replace('/main/shop/info');
        }

        if ($(this).is('.shop-service')) {
            location.replace('/main/shop/service');
        }

        if ($(this).is('.shop-designer')) {
            location.replace('/main/shop/designer');
        }

        if ($(this).is('.shop-day-off')) {
            location.replace('/main/shop/day-off');
        }

        if ($(this).is('.shop-event')) {
            location.replace('/main/shop/event');
        }
    });
});