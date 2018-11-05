class SearchController < ApplicationController
  def results
    
    # @basic_search = params[:lvl_of_exp]
    @basic_search = Contractor.basic_search(lvl_of_exp: "#{params[:lvl_of_exp]}")
  end
end
