class SearchController < ApplicationController
  def index
    @search = Language.where('name LIKE ?', "%#{params[:search]}%")
  end
end
