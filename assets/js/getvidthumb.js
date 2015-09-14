function GetVimeoThumb(vimurl) {

    var vidurl = vimurl.replace(/^((\w+:)?\/\/[^\/]+\/?).*$/, '$1');
    var videoID;
    var results;
    var title = '';
    var thumb = '';

    if (vidurl.toLowerCase().indexOf("vimeo") > -1) {
        var regExp = /^.*(vimeo\.com\/)((channels\/[A-z]+\/)|(groups\/[A-z]+\/videos\/))?([0-9]+)/;
        var match = vimurl.match(regExp);
        videoID = match[5];

        $.getJSON('http://vimeo.com/api/v2/video/' + videoID + '.json?callback=?', {
            format: "json"
        }, function (data, status) {
            thumb = data[0].thumbnail_large;
            title = data[0].title;
            console.log(title);
            console.log(thumb);
        });

    } else {
        results = vimurl.match("v=([a-zA-Z0-9-_]+)&?")
        videoID = results[1];

        $.getJSON('https://noembed.com/embed', {
            format: 'json', url: 'https://www.youtube.com/watch?v=' + videoID
        }, function (data) {
                title = data.title;
                thumb = '<img src="//img.youtube.com/vi/' + videoID + '/0.jpg">';
                console.log(title);
                console.log(thumb);
            });        
    }        
}