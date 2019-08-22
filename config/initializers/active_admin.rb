ActiveAdmin.setup do |config|
  config.site_title = "Conti"
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path
  config.batch_actions = true
  config.filter_attributes = [:encrypted_password, :password, :password_confirmation]
  config.localize_format = :long
  config.clear_stylesheets!
  config.register_stylesheet 'admin/active_admin.css'
  config.clear_javascripts!
  config.register_javascript 'admin/active_admin.js'
end
