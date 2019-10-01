require 'rails_helper'

describe 'プロフィール機能', type: :system do
  describe 'プロフィール表示機能' do
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
      it 'aのプロフィールが表示される' do
        expect(page).to have_content '名前: a'
      end
    end
  end
end