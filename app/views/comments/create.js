// $('.ajax-form-create').html('#{j render "comments/form",
//  article: @article, comment: @comment,
//  button_name: t("comments/form")}');
//
// $('.div-create').html('#{j render "comments/comment",
//  comments: @article.comments.desc}').appendTo('.div-create');

// console.log("comment create")
//
// $('.div-create .comment-thread').show();
// $('.div-create').append('<div class="comment-thread root">' +
//     '<p><strong><%= @comment.commenter%></strong></p><p><%= @comment.body%></p>' +
//     '<p><%= link_to "Delete", [@comment.article, @comment], method: :delete, data: { confirm: "Are you sure?" }%></p></div>');

// $(document).ready(function(){
//     var submit;
//
//     submit = document.getElementById("commentSub");
//
//     submit.onclick = function() {
//         var comment, name, select;
//         name = document.getElementById('comment_name');
//         comment = document.getElementById('comment_content');
//         select = document.querySelector('#status option');
//         console.log(select);
//         if (name === null || name.value === '' || name.value === ' ') {
//             window.alert('Please enter your name.');
//             name.focus();
//             return false;
//         } else if (name.value.length < 3) {
//             alert('Name must be at least 3 characters long.');
//             return false;
//         }
//         if (comment === null || comment.value === '' || comment.value === ' ') {
//             window.alert('Please enter your comment.');
//             comment.focus();
//             return false;
//         } else if (comment.value.length < 10) {
//             alert('Comment must be at least 10 characters long.');
//             return false;
//         }
//         debugger
//         datas = {
//             'comment': {
//                 'commenter': name.val(),
//                 'body': comment.val(),
//                 'status': select.val()
//             }
//         };
//         debugger;
//         $.ajax({
//             type: "GET",
//             data: datas,
//             success: function(res) {
//                 $('.div-create').append(res);
//                 return alert("Success!!!");
//             }
//         });
//     };
// });