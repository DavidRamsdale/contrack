class ApplicationController < ActionController::Base
    before_action :add_devise_params, if: :devise_controller?
    def is_recruiter
       redirect_to('/') if current_user.is_contractor == true
    rescue NoMethodError
        redirect_to ('/')
    end

    def has_paid
        redirect_to(recruiterpayment_path) if current_user.recruiter.paid == nil or current_user.recruiter.paid == false
    rescue NoMethodError
        redirect_to ('/')
    end

    def add_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :is_contractor])
        devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :is_contractor])
    end

end
