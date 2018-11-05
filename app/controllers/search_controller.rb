class SearchController < ApplicationController
  def results
    byebug
    @basic_search = Contractor.basic_search(lvl_of_exp: "1")
  end
end
