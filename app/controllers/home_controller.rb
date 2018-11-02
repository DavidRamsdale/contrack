class HomeController < ApplicationController

  
  def index 
    if user_signed_in?
      if current_user.is_contractor == false and current_user.recruiter == nil
        redirect_to new_recruiter_path
      elsif current_user.is_contractor == true and current_user.contractor == nil
        redirect_to new_contractor_path
      elsif current_user.is_contractor == false and current_user.recruiter != nil
        redirect_to recruiters_path
      elsif current_user.is_contractor == true and current_user.contractor != nil
        redirect_to contractors_path
      end
    end
  end


  def process_payment
  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'aud'
  )

  current_user.recruiter.paid = true
  current_user.recruiter.save  
  redirect_to '/'

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
  end

