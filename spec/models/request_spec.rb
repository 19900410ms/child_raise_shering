require 'rails_helper'

describe Request do

  describe '#create' do

    #必要項目を入力すれば登録可能
    it "is valid with a date, time, name, gender, age, allergy" do
      request = build(:request, allergy: nil, personality: nil, mention: nil, reply: nil)
      expect(request).to be_valid
    end

    #日付が空白では登録不可
    it "is invalid without a date" do
      request = build(:request, date: nil)
      request.valid?
      expect(request.errors[:date]).to include("can't be blank")
    end

    #日付が文字列では登録不可
    it "is invalid with a date of string" do
      request = build(:request, date: "サンプル")
      request.valid?
      expect(request.errors[:date]).to include("can't be blank")
    end

    #日付が数字列では登録不可
    it "is invalid with a date of row of integer" do
      request = build(:request, date: "123456789")
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
      request = build(:request, name: nil)
      request.valid?
      expect(request.errors[:name]).to include("can't be blank")
    end

    #性別が空白では登録不可
    it "is invalid without a gender" do
      request = build(:request, gender: nil)
      request.valid?
      expect(request.errors[:gender]).to include("can't be blank")
    end

    #年齢が空白では登録不可
    it "is invalid without a age" do
      request = build(:request, age: nil)
      request.valid?
      expect(request.errors[:age]).to include("can't be blank")
    end

    #アレルギーが空白でも登録可能
    it "is valid without a allergy" do
      request = build(:request, allergy: nil)
      expect(request).to be_valid
    end

    #性格が空白でも登録可能
    it "is valid without a personality" do
      request = build(:request, personality: nil)
      expect(request).to be_valid
    end

    #特記事項が空白でも登録可能
    it "is valid without a mention" do
      request = build(:request, mention: nil)
      expect(request).to be_valid
    end

    #リプライが空白でも登録可能
    it "is valid without a reply" do
      request = build(:request, reply: nil)
      expect(request).to be_valid
    end

  end

end