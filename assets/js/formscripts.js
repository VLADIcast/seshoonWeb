function addMusicians() {
    var max_fields = 10;

    $("#songcounter").append("<input id='scount' name='scount' type='hidden' value='1' />")
    $("#muscounter").append("<input id='mcount' name='mcount' type='hidden' value='1' />")

    $('#btnAddSong').click(function () {
        var num = $('.clonedSongInput').length;
        var newNum = num + 1;
        var newElem = $('#input' + num).clone().attr('id', 'input' + newNum);
        newElem.find(':input').each(function () {
            $(this).attr('id', $(this).attr('id').replace(/\d+/, newNum));
            $(this).attr('name', $(this).attr('name').replace(/\d+/, newNum));
            $(this).val('');
        });
        $('#input' + num).after(newElem);       
        $("#btnDelSong").css("display", "block");
        if (newNum == 5) $('#btnAddSong').css("display", "none");
        $("#songcounter").empty().append("<input id='scount' name='scount' type='hidden' value='" + newNum + "' />")
    });

    $('#btnDelSong').click(function () {
        var num = $('.clonedSongInput').length;
        var newNum = num - 1
        $('#input' + num).remove();
        $("#btnAddSong").css("display", "block");
        if (num == 2) $("#btnDelSong").css("display", "none");
        $("#songcounter").empty().append("<input id='scount' name='scount' type='hidden' value='" + newNum + "' />")            
    });    

    $('#btnAddMusician').click(function () {
        var num = $('.clonedMusicianInput').length;
        var newNum = num + 1;
        var newElem = $('#musinput' + num).clone().attr('id', 'musinput' + newNum);
        newElem.find(':input').each(function () {
            $(this).attr('id', $(this).attr('id').replace(/\d+/, newNum));
            $(this).attr('name', $(this).attr('name').replace(/\d+/, newNum));
            $(this).val('');
        });
        $('#musinput' + num).after(newElem);
        $("#btnDelMusician").css("display", "block");
        if (newNum == 5) $('#btnAddMusician').css("display", "none");
        $("#muscounter").empty().append("<input id='mcount' name='mcount' type='hidden' value='" + newNum + "' />")
    });

    $('#btnDelMusician').click(function () {
        var num = $('.clonedMusicianInput').length;
        var newNum = num - 1
        $('#musinput' + num).remove();
        $("#btnAddMusician").css("display", "block");
        if (num == 2) $("#btnDelMusician").css("display", "none");
        $("#muscounter").empty().append("<input id='mcount' name='mcount' type='hidden' value='" + newNum + "' />")
    });
}