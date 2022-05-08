require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end

  describe 'チャットルーム作成' do
    context '新規作成できる場合' do
      it "nameの値が存在すれば作成できる" do
        expect(@room).to be_valid
      end
    end
    context '新規作成できない場合' do
      it "nameが空では作成できない" do
        @room.name = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end
