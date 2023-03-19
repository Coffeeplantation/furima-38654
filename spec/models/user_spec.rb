require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      @user.nickname = '' 
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end
    it 'emailが空では登録できない' do
      @user.email = ''  
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end
      it 'passwordが空では登録できない' do
        @user.password = ''  
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
        it 'password_confirmationが空では登録できない' do
          @user.password_confirmation = @user.password  
          @user.valid?
        end
    it 'last_nameが空では登録できない' do
      @user.last_name = ''  
      @user.valid?
      expect(@user.errors.full_messages).to include "Last name can't be blank"
    end
    it 'family_nameが空では登録できない' do
      @user.family_name = ''  
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name can't be blank"
    end
    it 'last_name_kanaが空では登録できない' do
      @user.last_name_kana = ''  
      @user.valid?
      expect(@user.errors.full_messages).to include "Last name kana can't be blank"
    end
    it 'family_name_kanaが空では登録できない' do
      @user.family_name_kana = ''  
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name kana can't be blank"
    end
    it 'birth_dateが空では登録できない' do
      @user.birth_date = '' 
      @user.valid?
      expect(@user.errors.full_messages).to include "Birth date can't be blank"
    end
    it 'family_nameが全角入力でなければ登録できないこと' do
      @user = build(:user, family_name: "ｱｲｳｴｵ") 
      @user.valid?
      expect(user.errors[:family_name]).to include("は不正な値です")
    end

    it 'first_nameが全角入力でなければ登録できないこと' do
      @user = build(:user, last_name: "ｱｲｳｴｵ") 
      @user.valid?
      expect(user.errors[:last_name]).to include("は不正な値です")
    end
    it 'family_name_kanaが全角カタカナでなければ登録できないこと' do
      @user = build(:user, family_name_kana: "あいうえお") 
      @user.valid?
      expect(user.errors[:family_name_kana]).to include("は不正な値です")
    end
    it 'last_name_kanaが全角カタカナでなければ登録できないこと' do
      @user = build(:user, last_name_kana: "あいうえお") 
      @user.valid?
      expect(user.errors[:last_name_kana]).to include("は不正な値です")
    end
  end
end