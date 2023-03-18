require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      @user.nickname = ''  # nicknameの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end
    it 'emailが空では登録できない' do
      @user.email = ''  # emailの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end
      it 'passwordが空では登録できない' do
        @user.password = ''  # passwordの値を空にする
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
        it 'password_confirmationが空では登録できない' do
          @user.password_confirmation = @user.password  # password_confirmationの値を空にする
          @user.valid?
        end
    it 'last_nameが空では登録できない' do
      @user.last_name = ''  # last_nameの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Last name can't be blank"
    end
    it 'family_nameが空では登録できない' do
      @user.family_name = ''  # family_nameの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name can't be blank"
    end
    it 'last_name_kanaが空では登録できない' do
      @user.last_name_kana = ''  # last_name_kanaの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Last name kana can't be blank"
    end
    it 'family_name_kanaが空では登録できない' do
      @user.family_name_kana = ''  # family_name_kanaの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name kana can't be blank"
    end
    it 'birth_dateが空では登録できない' do
      @user.birth_date = ''  # birth_dateの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Birth date can't be blank"
    end
  end
end