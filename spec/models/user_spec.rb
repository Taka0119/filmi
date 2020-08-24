require 'rails_helper'

RSpec.describe User, type: :model do

  describe '#create' do
    it "名前とメールアドレスとパスワードがあれば登録できる" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "名前がなければ登録できない" do
      user = build(:user, name: "")
      user.valid?
    end

    it "メールアドレスがなければ登録できない" do 
      user = build(:user, email: "")
      user.valid?
    end

    it "メールアドレスに@がなければ登録できない" do
      user = build(:user, email: "testgmail.com")
      user.valid?
    end

    it "メールアドレスが重複していたら登録できない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
    end

    it "パスワードがなければ登録できない" do
      user = build(:user, password: "")
      user.valid?
    end

    it "パスワードは６文字以上でなければ登録できない" do
      user = build(:user, password: "00000")
      user.valid?
    end

    it "確認用パスワードがなければ登録できない" do
      user = build(:user, password_confirmation: "")
      user.valid?
    end
  end

end