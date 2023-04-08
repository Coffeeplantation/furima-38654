require 'rails_helper'
RSpec.describe Furima, type: :model do
  before do
    @furima = FactoryBot.build(:furima)
  end

  describe '出品機能' do

    context '出品ができる時' do

      it "必須項目が全てあれば登録できること" do
        expect(@furima).to be_valid
      end
      it 'ログイン状態のユーザーのみ、商品出品ページへ遷移できること' do
        @furima = FactoryBot.create(:user)
        expect(@furima).to be_valid
      end
    end

    context '出品ができない時' do

      it '商品画像を1枚つけることが必須であること' do
        @furima.image.key = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include{"Image can't be blank"}
      end

      it '商品名が必須であること' do
        @furima.item = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Item can't be blank")
      end

      it '商品の説明が必須であること' do
        @furima.item_text = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Item text can't be blank")
      end

      it 'カテゴリーの情報が必須であること' do
        @furima.category_id = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Category is not a number")
      end

      it '商品の状態についての情報が必須であること' do
        @furima.condition_id = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Condition is not a number")
      end

      it '配送料の負担についての情報が必須であること' do
        @furima.fee_id = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include( "Fee is not a number")
      end

      it '発送元の地域についての情報が必須であること' do
        @furima.prefecture_id = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Prefecture is not a number")
      end

      it '発送までの日数についての情報が必須であること' do
        @furima.scheduled_delivery_id = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Scheduled delivery is not a number")
      end

      it '販売価格についての情報が必須であること' do
        @furima.price = ''
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Price can't be blank")
      end

      it 'priceが299以下だと登録できないこと' do
        @furima.price = '299'
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Price Out of setting range")
      end
      it 'priceが10000000だと登録できないこと' do
        @furima.price = '10000000'
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Price Out of setting range")
      end

      it 'ユーザーが紐付いていなければ投稿できない' do
        @furima.user = nil
        @furima.valid?
        expect(@furima.errors.full_messages).to include('User must exist')
      end

      it '販売価格は半角数字のみ保存可能であること' do
        @furima.price = '１００００'
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Price Half-width number")
      end
    end
  end
end