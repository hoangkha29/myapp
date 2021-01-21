$('.result').append('<%= escape_javascript(render(:partial => @articles)) %>')

//<%= escape_javascript(render(:partial => @articles)) %>

// <% @articles.each do |article| %>\n' +
// '  <div class="article" data-id="<%= article.id %>">\n' +
// '    <h3 class="title-article">\n' +
// '      <%= link_to article.title, article %>\n' +
// '    </h3>\n' +
// '    <p style="margin-bottom: 55px;">\n' +
// '      <%= article.body %>\n' +
// '    </p>\n' +
// '  </div>\n' +
// '<% end %>