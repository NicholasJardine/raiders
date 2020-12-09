class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_perameters, if: :devise_controller?


  protected

def authenticate_admin!
  authenticate_user!
  redirect_to 'pages/not_here', status: :forbidden unless current_user.admin?
end



   def email_required?
        false
   end

  def configure_permitted_perameters
    # devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password, :name, :id_number)}
    devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:identity, :name, :password, :id_number, :email) }

    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:identity, :email, :password, :name, :id_number)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit( :identity, :email, :password, :password_confirmation, :current_password, :id_number,:admin)}
  end

end
