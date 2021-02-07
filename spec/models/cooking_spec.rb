require 'rails_helper'

RSpec.describe Cooking, type: :model do
  let(:cooking) { FactoryBot.build(:cooking) }

  describe '料理投稿機能' do
    context '投稿ができる場合' do
      it '全ての項目の入力が存在すれば投稿できる' do
        expect(cooking).to be_valid
      end
    end

    context '投稿ができない場合' do
      it 'nameが空だと投稿できない' do
        cooking.name = ''
        cooking.valid?
        expect(cooking.errors.full_messages).to include '料理名を入力してください'
      end

      it 'nameが21文字以上だと投稿できない' do
        cooking.name = 'あ' * 21
        cooking.valid?
        expect(cooking.errors.full_messages).to include '料理名は20文字以下に設定して下さい'
      end

      it 'recipeが空だと投稿できない' do
        cooking.recipe = ''
        cooking.valid?
        expect(cooking.errors.full_messages).to include 'レシピを入力してください' 
      end

      it 'pointが空だと投稿できない' do
        cooking.point = ''
        cooking.valid?
        expect(cooking.errors.full_messages).to include 'ポイントを入力してください' 
      end

      it 'materialが空だと投稿できない' do
        cooking.material = ''
        cooking.valid?
        expect(cooking.errors.full_messages).to include '作り方を入力してください'
      end

      it 'imageがないと投稿できない' do
        cooking.image = nil
        cooking.valid?
        expect(cooking.errors.full_messages).to include '画像を入力してください'
      end
    end  
  end
end
