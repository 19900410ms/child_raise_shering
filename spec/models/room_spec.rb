require 'rails_helper'

describe Room do

  describe '#create' do

    #各項目に該当データがあれば登録可能
    it "is valid with a user_id, request_id" do
      room = build(:room)
      expect(room).to be_valid
    end

    #外部キー(user)がなければ登録不可
    it "is invalid without a user_id" do
      room = build(:room, user_id: nil)
      room.valid?
      expect(room.errors[:user_id]).to include("can't be blank")
    end

    #外部キー(request)がなければ登録不可
    it "is invalid without a request_id" do
      room = build(:room, request_id: nil)
      room.valid?
      expect(room.errors[:request_id]).to include("can't be blank")
    end

  end

end
