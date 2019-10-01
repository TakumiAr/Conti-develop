require 'rails_helper'

describe 'マイページ機能', type: :system do
  describe 'マイページ表示機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'a', email: 'a@a.com')
    end
    context 'aがログインしているとき' do
      before do
        visit new_user_session_path
        fill_in 'メールアドレスを入力', with: 'a@a.com'
        fill_in 'パスワードを入力', with: '111111'
        click_button 'Log in'
      end
      it 'マイページが表示される' do
        visit users_mypage_path
        expect(page).to have_content '自分が送ったリクエストを確認する'
      end
    end
  end
end