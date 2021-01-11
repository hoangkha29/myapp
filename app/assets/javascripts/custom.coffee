console.log('active')

$('#viewmore').on 'click', (e) ->
  $('.result').append '%p' + 'new post'
  e.preventDefault()
  return