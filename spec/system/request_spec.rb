require 'rails_helper'

describe 'リクエスト機能', type: :system do
  describe 'リクエスト投稿機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'a', email: 'a@a.com')
      user_b = FactoryBot.create(:user, name: 'b', email: 'b@b.com')
      visit new_user_session_path
      fill_in 'メールアドレスを入力', with: 'a@a.com'
      fill_in 'パスワードを入力', with: '111111'
      click_button 'Log in'
    end
    context 'aがログインしているとき' do
      it 'bのプロフィール画面でリクエスト投稿ボタンが表示される' do
        visit users_path
        click_link 'b'
        expect(page).to have_content 'リクエスト'
      end
    end

    context 'aがログインしているとき' do
      it 'aのプロフィール画面でリクエスト投稿ボタンが表示されない' do
        visit users_path
        click_link 'a'
        expect(page).to have_no_content 'リクエスト'
      end
    end

    context 'aがログインしているとき' do
      it 'bにリクエストを投稿する画面が表示される' do
        visit users_path
        click_link 'b'
        click_link 'リクエストを送ってみる'
        expect(page).to have_content 'リクエストのタイトル'
      end
    end

    context 'aがログインしているとき' do
      it '自分が送ったリクエストを確認できる' do
        visit users_path
        click_link 'b'
        click_link 'リクエストを送ってみる'
        fill_in 'リクエストのタイトルを入力', with: 'リクエストタイトル'
        click_button 'リクエストを作成'
        visit requests_made_path
        click_link '詳細'
        expect(page).to have_content 'リクエストタイトル'
      end
    end
  end
end

