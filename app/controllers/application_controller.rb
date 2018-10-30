class ApplicationController < ActionController::Base
    before_action :add_devise_params, if: :devise_controller?
    def is_recruiter
       redirect_to('/') if current_user.recruiter == nil and current_user.contractor != nil
    end

    def add_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :is_contractor])
        devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :is_contractor])
    end

end
