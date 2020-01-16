$(function() {
  function buildHTML(message) {
    var html = `<div class="message-box">
                  <ul class="message-box__head">
                    <li class="message-box__head__name">${message.user_name}</li>
                    <li class="message-box__head__created-at">${message.created_at('%Y/%m/%d %H:%M')}</li>
                  </ul>
                  <p class="message-box__text">${message.chat}</p>
                </div>`
    return html;
  }
  $('#chat-send').on("submit", function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: "json",
      processData: false,
      contentType: false
    })
    .done(function(data) {
      var html = buildHTML(data);
      $('.room-chat__right__box').append(html);
      $('#message_chat').empty();
      $('#chat-send').prop('disabled', false);
      $('.message-box').animate({ scrollTop: $('.message-box')[0].scrollHeight});
      return false;
    })
    .fail(function() {
      alert('error');
    });
  })
})