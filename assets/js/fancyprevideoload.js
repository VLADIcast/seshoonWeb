/*!
	*	Options:
	*	event: when to load video. Default 'click'
	*	autoPlay: true for play the video after the event is launched. Default true
	*	ytimg: quality of youtube's video thumbnail. Default 0. Can be: 0 (full-size) | 1 | 2 | 3 | default | hqdefault | mqdefault | sddefault | maxresdefault (max-resolution)
	*	vmimg: quality of vimeo's video thumbnail. Default large. Can be: small | medium | large
	*	vmcache: cache vimeo's video thumbnail
	*/


! function (b) {
    b.fn.PreVideoLoad = function (c) {
        c = b.extend({}, {
            autoPlay: !0,
            event: "click",
            ytimg: "3",
            vmimg: "small"
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
            }), a.html('<a class="PreVideoLoadPlay PreVimeoPlay fancybox-media" href="//vimeo.com/' + d + '" target="_blank"></a>')
            ) : b(this).hasClass("PreYoutube") && (a.css("background-image", "url(//i3.ytimg.com/vi/" + d + "/" + c.ytimg + ".jpg)"), a.html('<a class="PreVideoLoadPlay PreYoutubePlay fancybox-media" href="//www.youtube.com/watch?v=' + d + '" target="_blank"></a>')
            )
        })
    }
}(jQuery);