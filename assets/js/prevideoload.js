/*!
	*	Options:
	*	event: when to load video. Default 'click'
	*	autoPlay: true for play the video after the event is launched. Default true
	*	ytimg: quality of youtube's video thumbnail. Default 0. Can be: 0 (full-size) | 1 | 2 | 3 | default | hqdefault | mqdefault | sddefault | maxresdefault (max-resolution)
	*	vmimg: quality of vimeo's video thumbnail. Default large. Can be: small | medium | large
	*	vmcache: cache vimeo's video thumbnail
	*/


var isiPhone = navigator.userAgent.match(/iPhone/i) != null;
var isAndroid = navigator.userAgent.match(/Android/i) != null;
    if (isiPhone == true || isAndroid == true) {
        ! function (b) {
            b.fn.PreVideoLoad = function (c) {
                c = b.extend({}, {
                    autoPlay: !0,
                    event: "click",
                    ytimg: "0",
                    vmimg: "large"
                }, c);
                this.each(function () {
                    var a = b(this),
                        d = a.attr("data-videoid");
                    b(this).hasClass("PreVimeo") ? (b.ajax({
                        dataType: 'jsonp',
                        cache: false,
                        contentType: 'application/json; charset=utf8',
                        type: 'GET',
                        url: "//vimeo.com/api/v2/video/" + d + ".json"
                    }).done(function (b) {
                        a.css("background-image", "url(" + b[0]["thumbnail_" + c.vmimg] + ")")
                    }), a.html('<a class="PreVideoLoadPlay PreVimeoPlay" href="//vimeo.com/' + d + '" target="_blank"></a>'), a.find("a.PreVimeoPlay").on(c.event, function (a) {
                        a.preventDefault();
                        b(this).parent().html('<iframe class="PreVideoLoadPlayer PreVimeoPlayer" src="//player.vimeo.com/video/' + d + "?color=039be5&autoplay=" + (c.autoPlay ? 1 : 0) + '" frameborder="0" allowfullscreen></iframe>')
                    })) : b(this).hasClass("PreYoutube") && (a.css("background-image", "url(//i3.ytimg.com/vi/" + d + "/" + c.ytimg + ".jpg)"), a.html('<a class="PreVideoLoadPlay PreYoutubePlay" href="//www.youtube.com/watch?v=' + d + '" target="_blank"></a>'), a.find("a.PreYoutubePlay").on(c.event, function (a) {
                        a.preventDefault();
                        b(this).parent().html('<iframe class="PreVideoLoadPlayer PreYoutubePlayer" src="//www.youtube.com/embed/' + d + "?autoplay=" + (c.autoPlay ? 1 : 0) + '" frameborder="0" allowfullscreen></iframe>')
                    }))
                })
            }
        }(jQuery);
    } else {
        ! function (b) {
            b.fn.PreVideoLoad = function (c) {
                c = b.extend({}, {
                    autoPlay: !0,
                    event: "click",
                    ytimg: "0",
                    vmimg: "large"
                }, c);
                this.each(function () {
                    var a = b(this),
                        d = a.attr("data-videoid");
                        t = a.attr("data-title");
                    b(this).hasClass("PreVimeo") ? (b.ajax({
                        dataType: 'jsonp',
                        cache: false,
                        contentType: 'application/json; charset=utf8',
                        type: 'GET',
                        url: "//vimeo.com/api/v2/video/" + d + ".json"
                    }).done(function (b) {
                        a.css("background-image", "url(" + b[0]["thumbnail_" + c.vmimg] + ")")
                        //console.log(b[0]["title"]);
                    }), a.html('<a class="PreVideoLoadPlay PreVimeoPlay fancybox-media" href="//vimeo.com/' + d + '" target="_blank"  title="' + t + '"></a>')
                    ) : b(this).hasClass("PreYoutube") && (a.css("background-image", "url(//i3.ytimg.com/vi/" + d + "/" + c.ytimg + ".jpg)"), a.html('<a class="PreVideoLoadPlay PreYoutubePlay fancybox-media" href="//www.youtube.com/watch?v=' + d + '" target="_blank"  title="' + t + '"></a>')
                    )
                })
            }
        }(jQuery);
    }

