// $('.ajax-form-create').html('#{j render "comments/form",
//  article: @article, comment: @comment,
//  button_name: t("comments/form")}');
//
// $('.div-create').html('#{j render "comments/comment",
//  comments: @article.comments.desc}').appendTo('.div-create');

console.log("comment create")

// $('.comment-thread').html('= render "comments/comment" ');
$('.div-create .comment-thread').show();
$('.div-create').append('<div class="comment-thread root">' +
    '<p><strong><%= @comment.commenter%></strong></p><p><%= @comment.body%></p>' +
    '<p><%= link_to "Destroy Comment", [@comment.article, @comment], method: :delete, data: { confirm: "Are you sure?" }%></p></div>');