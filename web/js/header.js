$('.header-btn').click(function () {
    if ($(this).is('.active')) {
        return;
    }

    if ($(this).is('.reservation-header-btn')) {
        location.replace('/main/reservation');
    }
    if ($(this).is('.shop-header-btn')) {
        location.replace('/main/shop');
    }
    if ($(this).is('.customer-header-btn')) {
        location.replace('/main/customer');
    }
    if ($(this).is('.sale-header-btn')) {
        location.replace('/main/sale');
    }
    if ($(this).is('.cs-header-btn')) {
        location.replace('/main/cs');
    }
    if ($(this).is('.analysis-header-btn')) {
        location.replace('/main/analysis');
    }
    if ($(this).is('.config-header-btn')) {
        location.replace('/main/config');
    }
});