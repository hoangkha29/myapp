function viewMore(){
    // alert ("loading...");
    // let view = document.querySelector("#view-more a")
    let last_id = $('.article').last().attr('data-id');
    console.log(last_id);
    let url = $('.article a').attr('href')
    // debugger;
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