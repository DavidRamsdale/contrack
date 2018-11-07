class SearchController < ApplicationController
  def results
    @search_with_date  = Contractor.basic_search(lvl_of_exp: "#{params[:lvl_of_exp]}", engineer_type: "#{params[:engineer_type]}", city: "#{params[:city]}").where("end_date <= ?", "#{params[:end_date]}").collect(&:user_id)
    @array = []
    @language_search = params[:language_id]
    @language_search.each do |x|
      @array << Language.find(x).users.pluck(:user_id)
    end
    @result = @array.inject(:&)
    @end = @search_with_date & @result
    @users = User.includes(:contractor).where(id: @end).references(:contractor).order('contractors.end_date').reverse
    @user_contractors = Contractor.where(user_id: @end).order(:end_date).reverse
  end
end

