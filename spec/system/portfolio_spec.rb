require 'rails_helper'

describe 'ポートフォリオ機能', type: :system do
  describe 'ポートフォリオ公開機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'a', email: 'a@a.com')
      visit new_user_session_path
      fill_in 'メールアドレスを入力', with: 'a@a.com'
      fill_in 'パスワードを入力', with: '111111'
      click_button 'Log in'
    end
    context 'aがログインしているとき' do
      it 'ポートフォリオを投稿し、自分のプロフィールページで公開できる' do
        visit new_portfolio_path
        fill_in "YouTubeのURLを貼り付け（検索ページにサムネイルと一緒に公開されます。）", with: 'https://www.youtube.com/watch?v=9Xz4NV0zsbY&loop=0'
        click_button 'ポートフォリオを作成'
        expect(page).to have_no_content 'ポートフォリオは登録されていません'
      end
    end
  end
end