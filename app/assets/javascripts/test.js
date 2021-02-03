function viewMore(){
    let last_id = $('.article').last().attr('data-id');
    console.log(last_id);
    let url = $('.article a').attr('href')
    $.ajax({
        type: "GET",
        dateType: "script",
        url: url,
        data: {
            id: last_id
        },
        success: function () {
            console.log("success")
        }
    });
};

// let star = document.getElementsByClassName('star')
// console.log(star);
// var i,j
// for (i = 0 ; i < star.length; i++) {
//     let text = ''
//     for (j = 0 ; j < star[i].innerHTML; j++) {
//         text += "<img src='/assets/star.svg'>";
//     }
//     $('.commentStar')[i].innerHTML = text;
// }


