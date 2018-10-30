class ApplicationController < ActionController::Base
    before_action :add_devise_params, if: :devise_controller?

    def add_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :is_contractor])
        devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :is_contractor])
    end

end
