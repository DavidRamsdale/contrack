class LanguageUsersController < ApplicationController
    def new
        @language_user = LanguageUser.new
    end

    def create
      
        params[:language_user][:language_id].each do |f|
            @language_user = LanguageUser.new
            @language_user.language_id = f
            @language_user.user_id = current_user.id
            @language_user.save
            
        end
        redirect_to "/"
    end

    private
    def language_params
        params.require(:language_user).permit(:user_id, :language_id)
    end
end
