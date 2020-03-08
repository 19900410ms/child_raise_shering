require 'rails_helper'

describe Message do

  describe '#create' do

    #必要項目を入力すれば登録可能
    it "is valid with a chat, user_id, room_id" do
      message = build(:message)
      expect(message).to be_valid
    end

    #メッセージが空白では登録不可
    it "is invalid without a chat" do
      message = build(:message, chat: nil)
      message.valid?
      expect(message.errors[:chat]).to include("can't be blank")
    end

    #外部キー(user)がなければ登録不可
    it "is invalid without a user_id" do
      message = build(:message, user_id: nil)
      message.valid?
      expect(message.errors[:user_id]).to include("can't be blank")
    end

    #外部キー(room)がなければ登録不可
    it "is invalid without a room_id" do
      message = build(:message, room_id: nil)
      message.valid?
      expect(message.errors[:room_id]).to include("can't be blank")
    end

  end

end
