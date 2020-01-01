require 'rails_helper'

describe Request do

  describe '#create' do

    #日付が空白では登録不可
    it "is invalid without a date" do
      request = build(:request, date: nil)
      request.valid?
      expect(request.errors[:date]).to include("can't be blank")
    end

    #時間が空白では登録不可
    it "is invalid without a time" do
      request = build(:request, time: nil)
      request.valid?
      expect(request.errors[:time]).to include("can't be blank")
    end

    #名前が空白では登録不可
    it "is invalid without a name" do
      request = build(:user, name: nil)
      request.valid?
      expect(request.errors[:name]).to include("can't be blank")
    end

    #性別が空白では登録不可
    it "is invalid without a gender" do
      request = build(:user, gender: nil)
      request.valid?
      expect(request.errors[:gender]).to include("can't be blank")
    end

    #年齢が空白では登録不可
    it "is invalid without a age" do
      request = build(:user, age: nil)
      request.valid?
      expect(request.errors[:age]).to include("can't be blank")
    end

  end

end