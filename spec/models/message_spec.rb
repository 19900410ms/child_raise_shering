require 'rails_helper'

describe Accept do

  describe '#create' do

    #メッセージが空白では登録不可
    it "is invalid without a chat" do
      message = build(:message, chat: nil)
      message.valid?
      expect(message.errors[:chat]).to include("can't be blank")
    end

  end

end
