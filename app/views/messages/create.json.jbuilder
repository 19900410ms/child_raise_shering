json.id         @message.id
json.user_name  @message.user.name
json.chat       @message.chat
json.created_at @message.created_at.strftime('%Y/%m/%d %H:%M')
json.user_id    @message.user.id
json.room_id    @message.room.id