require 'rails_helper'

describe Accept do

  describe '#create' do

    #日付が空白では登録不可
    it "is invalid without a date" do
      accept = build(:accept, date: nil)
      accept.valid?
      expect(accept.errors[:date]).to include("can't be blank")
    end

    #時間が空白では登録不可
    it "is invalid without a time" do
      accept = build(:accept, time: nil)
      accept.valid?
      expect(accept.errors[:time]).to include("can't be blank")
    end

    #キャパシティが空白では登録不可
    it "is invalid without a capacity" do
      accept = build(:accept, capacity: nil)
      accept.valid?
      expect(accept.errors[:capacity]).to include("can't be blank")
    end

  end

end