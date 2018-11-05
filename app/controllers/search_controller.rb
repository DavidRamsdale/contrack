class SearchController < ApplicationController
  def results
    
    # @basic_search = params[:lvl_of_exp]
    
    @basic_search = Contractor.basic_search(lvl_of_exp: "#{params[:lvl_of_exp]}", engineer_type: "#{params[:engineer_type]}", city: "#{params[:city]}", pay_range: "#{params[:pay_range]}", pref_contract: "#{params[:pref_contract]}").collect(&:user_id)
    
    # params[:language_id]
    @array =[]
    @language_search = params[:language_id]
    @language_search.each do |x|
      @array << Language.find(x).users.pluck(:user_id)
    end
  end


  # def language_user(x)
  #   Language.find(x).users.pluck(:user_id)
  # end
end

