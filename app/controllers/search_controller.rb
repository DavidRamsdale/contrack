class SearchController < ApplicationController
  def results
    byebug
    @basic_search = Contractor.basic_search(city: "#{params[:city]}")
  end
end
