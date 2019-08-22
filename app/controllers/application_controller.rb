class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    # ログイン済ユーザーのみにアクセスを許可する
    # before_action :authenticate_user!
  
    # deviseコントローラーにストロングパラメータを追加する          
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    def authenticate_admin_user!
      authenticate_user!
    
      # current_userはdevise提供のメソッドです。
      # 権限ユーザのroleについては、好きな方法でよいです。（自分の場合、has_roleメソッドで実装）
      unless current_user.has_role 'admin'
        flash[:alert] = "管理者用ページです。権限があるアカウントでログインしてください。"
        redirect_to root_path
      end
    end

    protected

    def after_sign_in_path_for(resorce)
      user_path(current_user.id)
    end

    def after_sign_out_path_for(resource)
      root_path # ログアウト後に遷移するpathを設定
    end

    def configure_permitted_parameters
      # サインアップ時にnameのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # アカウント編集の時にnameとprofileのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile])
    end
end
