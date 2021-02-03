#datetime
today = new Date
day = today.getDate()
month = today.getMonth()
year = today.getFullYear()
monthList = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

console.log (day + monthList[month] + year);

# ====================>
star = document.getElementsByClassName('star')
console.log(star)

i = undefined
j = undefined
i = 0
while i < star.length
  text = ''
  j = 0
  while j < star[i].innerHTML
    text += '<img src=\'/assets/star.svg\'>'
    j++
  $('.commentStar')[i].innerHTML = text
  i++

# =================>
submit = document.getElementById("commentSub")

submit.onclick = ->
  name = document.getElementById('comment_name')
  comment = document.getElementById('comment_content')

  select = document.querySelector('#comment_status')

  select.onchange = ->
    return select.value

  if name == null or name.value == '' or name.value == ' '
    window.alert 'Please enter your name.'
    name.focus()
    return false
  else if name.value.length < 3
    alert 'Name must be at least 3 characters long.'
    return false

  if comment == null or comment.value == '' or comment.value == ' '
    window.alert 'Please enter your comment.'
    comment.focus()
    return false
  else if comment.value.length < 10
    alert 'Comment must be at least 10 characters long.'
    return false
  data =
    'comments':
      'commenter': name.value
      'body': comment.value
      'status': select.value
  $.ajax
    type: 'GET'
    data: data
    success: () ->
      console.log 'comment create'
      $('.div-create .comment-thread').show()
      $('.div-create').append '<div class="comment-thread root"><p><strong>' + data.comments.commenter + '</strong></p><p>' + data.comments.body + '</p></div>'
      alert "Success!!!"
return