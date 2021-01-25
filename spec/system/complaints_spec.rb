require 'rails_helper'

describe '投稿のテスト' do
  let!(:complaint) { create(:complaint, title:'hoge',body:'body') }
  describe 'トップ画面(root_path)のテスト' do
    before do
      visit root_path
    end
    context '表示の確認' do
      it 'トップ画面(root_path)に「Share Diaryへようこそ！」が表示されているか' do
        expect(page).to have_content 'Share Diaryへようこそ！'
      end
      it 'root_pathがトップ画面(ルートパス)であるか' do
        expect(current_path).to eq('/')
      end
    end
  end
  
  describe '投稿画面のテスト(愚痴)' do
    before do
      visit new_complaint_path
    end
    context '表示の確認' do
      it 'new_complaint_pathが"/complaints/new"であるか' do
        expect(current_path).to eq('/complaints/new')
      end
      it '投稿ボタンが表示されているか' do
        expect(page).to have_button '愚痴る'
      end
    end
  end
  
end