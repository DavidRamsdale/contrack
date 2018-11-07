class SearchController < ApplicationController
  def results
    @basic_search = Contractor.basic_search(lvl_of_exp: "#{params[:lvl_of_exp]}", engineer_type: "#{params[:engineer_type]}", city: "#{params[:city]}").where("end_date <= ?", "#{params[:end_date]}").collect(&:user_id)
    # @date = Contractor.where("end_date <= ?", "#{params[:end_date]}").collect(&:user_id)
    # @search_with_date =  @basic_search & @date
    @search_with_date =  @basic_search
    @array = []
    @language_search = params[:language_id]
    @language_search.each do |x|
      @array << Language.find(x).users.pluck(:user_id)
    end
    @result = @array.inject(:&)
    @end = @search_with_date & @result
    @users = User.where(id: @end)
    @user_contractors = Contractor.where(user_id: @end)
    byebug
  end
end

