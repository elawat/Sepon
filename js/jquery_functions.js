

function FormatRefID(RefID) {

    if (RefID.indexOf("(") > -1) {
        var RefID = RefID.substr(1, RefID.length);
    }
    if (RefID.indexOf(")") > -1) {
        var RefID = RefID.substr(0, RefID.length - 1);
    }
    if (RefID.indexOf("p.") > -1) {
        var RefID = RefID.substr(0, (RefID.length - 8));
    }
    var newRefID = RefID
    return newRefID
}

function SideBarLinkExist(href) {
    var result = false
    $('.sidebar-nav a').each(function () {
        if ($(this).prop('href').includes(href)) {
            result = true;
        }
    });
    return result

}
function ActivePageMain(about,analyses,home,data) {
    $('.navbar-default a').each(function () {
        if (about && $(this).prop('href').includes("About.aspx")) {
            $(this).addClass('active-page'); $(this).parents('li').addClass('active-page');
        }
        else if (analyses && $(this).prop('href').includes("Analyses.aspx")) {
            $(this).addClass('active-page'); $(this).parents('li').addClass('active-page');
        }
        else if (data && $(this).prop('href').includes("Data.aspx")) {
            $(this).addClass('active-page'); $(this).parents('li').addClass('active-page');
        }
        else if (home && $(this).prop('href').includes("Default.aspx")) {
            $(this).addClass('active-page'); $(this).parents('li').addClass('active-page');
        }
        else {

        }
    });
}

function ActivePageMainRun() {
    var about = false
    var analyses = false
    var data = false
    var home = false
    if ($('.sidebar-nav').length) {
         about = SideBarLinkExist("About.aspx");
         analyses = SideBarLinkExist("Analyses.aspx");
         data = SideBarLinkExist("Data.aspx");
    }
    else {
         home = true
    }
    
    ActivePageMain(about, analyses, home);
}

function ActivePageSide() {
    $('.sidebar-nav a').each(function () {
        if ($(this).prop('href') == window.location.href) {
            $(this).addClass('active-page-side'); $(this).parents('li').addClass('active-page-side');
        }
    });
}

$(document).ready(function () {
    function setHeight() {
        windowHeight = $(window).innerHeight();
        $('leftcol').css('min-height', windowHeight);
    };
    setHeight();

    $(window).resize(function () {
        setHeight();
    });
});

