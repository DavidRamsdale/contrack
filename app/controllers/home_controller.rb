class HomeController < ApplicationController
  def index 
  if current_user.is_contractor == false and current_user.recruiter == nil
    redirect_to new_recruiter_path
  elsif current_user.is_contractor == true and current_user.contractor == nil
    redirect_to new_contractor_path
  end
end
end