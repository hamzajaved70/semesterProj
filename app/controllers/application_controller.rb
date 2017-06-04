class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|  
   flash[:error] = "Access denied."  
   redirect_to root_url  
 end 

 

 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :middle_name, :last_name, :father_name, :father_cnic,
    :mobile , :b_form, :gender, :date_of_birth])


end
end
