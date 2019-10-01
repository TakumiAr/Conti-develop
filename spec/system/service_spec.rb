require 'rails_helper'

describe 'サービス機能', type: :system do
  describe 'サービス作成機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'a', email: 'a@a.com')
      visit new_user_session_path
      fill_in 'メールアドレスを入力', with: 'a@a.com'
      fill_in 'パスワードを入力', with: '111111'
      click_button 'Log in'
    end
    context 'aがログインしているとき' do
      it 'サービスが作成できる' do
        visit new_service_path
        fill_in "サービスのタイトルを入力", with: 'さーびすたいとる'
        click_button 'サービスを作成'
        expect(page).to have_content 'さーびすたいとる'
      end
    end
  end
end