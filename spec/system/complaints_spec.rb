require 'rails_helper'

describe '投稿のテスト' do
  let!(:complaint) { create(:complaint, title: 'hoge', body: 'body') }

  describe 'トップ画面(root_path)のテスト' do
    before do
      user_a = FactoryBot.create(:user, email: 'a@example.com', password: 'aaaaaa')
    end
    context 'ユーザーAがログインしている時' do
      before do
        visit user_session_path
        fill_in 'user_email', with: 'a@example.com'
        fill_in 'user_password', with: 'aaaaaa'
        click_button 'ログイン'
      end

      it 'トップ画面へ遷移する' do
        expect(page).to have_link "", href: root_path
      end

      it 'トップ画面(root_path)に「Share Diaryへようこそ！」が表示されているか' do
        expect(page).to have_content 'Share Diaryへようこそ！'
      end

      it 'root_pathがトップ画面(ルートパス)であるか' do
        expect(current_path).to eq('/')
      end



        it 'new_complaint_pathが"/complaints/new"であるか' do
          # 新規投稿画面に移動する
          visit new_complaint_path
          
          # パスが正しいことを確認する
          expect(current_path).to eq('/complaints/new')
          
          # 投稿ボタンが表示されているか確認する
          expect(page).to have_button '愚痴る！'
          
        end

        # it '投稿ボタンが表示されているか' do
        #   visit new_complaint_path
        #   expect(page).to have_button '愚痴る！'
        # end



    end

    context '表示の確認' do
    end

  end

end
