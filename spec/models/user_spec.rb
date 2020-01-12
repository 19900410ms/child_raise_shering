require 'rails_helper'

describe User do

  describe '#create' do

    #ニックネームが空白では登録不可
    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    #メールアドレスが空白では登録不可
    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    #重複したメールアドレスは登録不可
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    #5文字以下のパスワードは登録不可
    it "is invalid with a password that has less than 5 characters" do
      user = build(:user, password: "12345")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end

    #passwordが入力済みでもpassword_confirmationが空白では登録不可
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    #passwordが6文字以上は登録可能
    it "is valid with a password that has more than 6 characters" do
      user = build(:user, password: "123456")
      user.valid?
      expect(user).to be_valid
    end

    #詳細住所が空白では登録不可
    it "is invalid without a prefecture_id" do
      user = build(:user, prefecture_id: nil)
      user.valid?
      expect(user.errors[:prefecture_id]).to include("can't be blank")
    end

    #地域区分が空白では登録不可
    it "is invalid without a city" do
      user = build(:user, city: nil)
      user.valid?
      expect(user.errors[:city]).to include("can't be blank")
    end

    #年齢が空白では登録不可
    it "is invalid without a age" do
      user = build(:user, age: nil)
      user.valid?
      expect(user.errors[:age]).to include("can't be blank")
    end

    #性別が空白では登録不可
    it "is invalid without a gender" do
      user = build(:user, gender: nil)
      user.valid?
      expect(user.errors[:gender]).to include("can't be blank")
    end

  end

end