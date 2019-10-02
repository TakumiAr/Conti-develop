require 'rails_helper'

describe 'ユーザーのモデルテスト', type: :system do
  describe 'バリデーション確認' do
      it "is valid with a name, email, and password" do 
        @user = User.new( 
          name: "John",
          email: "dd@dd.com", 
          password: "111111" 
        )
        expect(@user).to be_valid
      end
  end
end