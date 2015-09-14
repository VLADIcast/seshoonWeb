function Home(dt) {
    $("#countdown").countdown({
        date: dt,
        format: "on"
    },

	    function () {
	        //callback function
	    });


    // Contact form validation
    var form = $('.contact-form');
    form.submit(function () {
        'use strict',
            $this = $(this);
        $.post($(this).attr('action'), function (data) {
            $this.prev().text(data.message).fadeIn().delay(3000).fadeOut();
        }, 'json');
        return false;
    });
}

function EventCountdown(dt) {
    $("#countdown").countdown({
        date: dt,
        format: "on"
    },

       function () {
           //callback function
       });
}

function GetLatLong(addr) {
    var lat;
    var long;
    jQuery.ajax({
        type: "GET",
        dataType: "json",
        url: "http://maps.googleapis.com/maps/api/geocode/json",
        data: { 'address': addr, 'sensor': false },
        success: function (data) {
            if (data.results.length) {
                lat = data.results[0].geometry.location.lat;
                long = data.results[0].geometry.location.lng;
                GetMap(lat, long);
                var daddr = lat + ',' + long
                $('#getdir').html("<a href=https://maps.google.com/?daddr=" + daddr + " target='_blank'>Get Directions</a>");
            } else {
                lat = 'invalid address';
                long = 'invalid address';
            }
        }
    });
}

function GetMap(lt,lg) {
    var map;
    map = new GMaps({
        div: '#gmap',
        lat: lt,
        lng: lg,
        scrollwheel: false,
        zoom: 16,
        zoomControl : true,
        panControl : true,
        streetViewControl : false,
        mapTypeControl: false,
        overviewMapControl: false,
        clickable: false
    });
    map.addMarker({
        lat: lt,
        lng: lg
    });
    map.addMarker({
        lat: lt,
        lng: lg,
        title: 'Marker with InfoWindow',
        infoWindow: {
            content: "<a href=https://maps.google.com/?daddr=" + lt + ',' + lg + " target='_blank'>Get Directions</a>"
        }
    });
}

$.ajaxPrefilter(function (options, originalOptions, jqXHR) {
    options.async = true;
});

var cT = {
    initialized: false, // state for knowing if init is called first time
    init: function () {
        $(".infolink").click(function () {
            var id = $(this).attr("id");
            var div = "collapse" + id;
            getArrangements(id, div);     
        });
    }
}



function getBandSongs() {
    var $list = $('#accordion');
    $list.empty();
    
    $.getJSON("/assets/js/bandsongs.txt", function (data) {

        listmarkup = ''

        $.each(data.Response.songs, function (i, item) {
            listmarkup += '<div class="panel panel-default"><div class="panel-heading"><div class="row"><div class="col-xs-10">' + item.title + '<br />(' + item.artist + ')</div><div class="col-xs-2"><a class="infolink" id="' + item.songID + '" data-toggle="collapse" data-parent="#accordion" href="#collapse' + item.songID + '"><i class="fa fa-music" style="font-size: 44px;float: right;"></i></a></div></div></div>' +
                '<div id="collapse' + item.songID + '" class="panel-collapse collapse"></div></div></div>'
        });
    })
     .complete(function () {
         $list.html(listmarkup);
         cT.init();
     });
}

function getArrangements(id, div) {
    var $songlist = $("#" + div);
    $songlist.empty();

    var vimurl;
    var vidmarkup = '<div class="row"><div class="col-sm-12"><h2>videos</h2>';
    var audiomarkup = '<div class="row"><div class="col-sm-12"><h2>audio</h2><div class="sc-player">';
    var markup = '<div class="panel-body">';

    $.getJSON("/assets/js/bandmedia.txt", function (data) {        

        $.each(data.Response.media, function (i, item) {
            if (item.type == 0) {
                vimurl = item.link;
                var vidurl = vimurl.replace(/^((\w+:)?\/\/[^\/]+\/?).*$/, '$1');
                var videoID;

                if (vidurl.toLowerCase().indexOf("vimeo") > -1) {
                    var regExp = /^.*(vimeo\.com\/)((channels\/[A-z]+\/)|(groups\/[A-z]+\/videos\/))?([0-9]+)/;
                    var match = vimurl.match(regExp);
                    videoID = match[5];
                    vidmarkup += '<div class="PreVideoLoad PreVimeo" data-videoid="' + videoID + '" data-title="' + item.description + '"></div>';
                } else {
                    results = vimurl.match("v=([a-zA-Z0-9-_]+)&?")
                    videoID = results[1];
                    vidmarkup += '<div class="PreVideoLoad PreYoutube" data-videoid="' + videoID + '" data-title="' + item.description + '"></div>'
                }
            } else if (item.type == 1) {
                audiomarkup += '<a href="' + item.link + '"></a>'
            } else {

            }
        });
        vidmarkup += '</div></div>'
        audiomarkup += '</div></div></div>'
    })
     .complete(function () {
         $songlist.html(markup += vidmarkup += audiomarkup +='</div>');
         $('.PreVideoLoad').PreVideoLoad();
         $('.sc-player').scPlayer();
     });
}

function getMedia() {

    var $songlist = $("#media");
    $songlist.empty();

    var vimurl;
    var vidmarkup = '<div class="row"><div class="col-sm-12"><h2>videos</h2>';
    var audiomarkup = '<div class="row"><div class="col-sm-12"><h2>audio</h2><div class="sc-player">';
    var markup = '';

    $.getJSON("/assets/js/allmedia.txt", function (data) {

        $.each(data.Response.media, function (i, item) {
            if (item.type == 0) {
                vimurl = item.link;
                var vidurl = vimurl.replace(/^((\w+:)?\/\/[^\/]+\/?).*$/, '$1');
                var videoID;

                if (vidurl.toLowerCase().indexOf("vimeo") > -1) {
                    var regExp = /^.*(vimeo\.com\/)((channels\/[A-z]+\/)|(groups\/[A-z]+\/videos\/))?([0-9]+)/;
                    var match = vimurl.match(regExp);
                    videoID = match[5];
                    vidmarkup += '<div class="PreVideoLoad PreVimeo" data-videoid="' + videoID + '" data-title="' + item.description + '"></div>';
                } else {
                    results = vimurl.match("v=([a-zA-Z0-9-_]+)&?")
                    videoID = results[1];
                    vidmarkup += '<div class="PreVideoLoad PreYoutube" data-videoid="' + videoID + '" data-title="' + item.description + '"></div>'
                }
            } else if (item.type == 1) {
                audiomarkup += '<a href="' + item.link + '"></a>'
            } else {

            }
        });
        vidmarkup += '</div></div>'
        audiomarkup += '</div></div></div>'
    })
     .complete(function () {
         $songlist.html(markup += vidmarkup += audiomarkup);
         $('.PreVideoLoad').PreVideoLoad();
         $('.sc-player').scPlayer();
     });
}

