require 'rails_helper'

describe '検索機能', type: :system do
  describe 'ユーザー検索機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'a', email: 'a@a.com')
      user_b = FactoryBot.create(:user, name: 'b', email: 'b@b.com')
    end
    context 'aがログインしているとき' do
      before do
        visit new_user_session_path
        fill_in 'メールアドレスを入力', with: 'a@a.com'
        fill_in 'パスワードを入力', with: '111111'
        click_button 'Log in'
      end
      it '検索画面からbの情報が表示される' do
        visit users_path
        fill_in 'ユーザー名で検索', with: 'b'
        click_button '検索'
        expect(page).to have_no_content 'a'
        expect(page).to have_content 'b'
      end
    end
  end
end