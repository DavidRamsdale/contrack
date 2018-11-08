class SearchController < ApplicationController
  def results
    # Searching the date with a basic search and chaining that with a where statement for finding the end date that is less the date the recruiter inputs, this is then converted to user_ids
    @search_with_date  = Contractor.basic_search(lvl_of_exp: "#{params[:lvl_of_exp]}", engineer_type: "#{params[:engineer_type]}", city: "#{params[:city]}").where("end_date <= ?", "#{params[:end_date]}").collect(&:user_id)
    @language_array = []
    @language_params = params[:language_id]
    #This is a loop for adding in the selected languages in the checkboxes into an array of arrays and converts to user_ids
    @language_params.each do |x|
      @language_array << Language.find(x).users.pluck(:user_id)
    end
    # This then finds the intercept of all the language user_ids and returns a single array of that intercept
    @language_intercept = @language_array.inject(:&)
    # We then intercept all of the searchs with the user_id outputs and find the desired contractor
    @user_result = @search_with_date & @language_intercept
    # This retrieves the contractor information based on the user_ids we collected and orders by the end date
    @user_contractors = Contractor.where(user_id: @user_result).order(:end_date).reverse
  end
end