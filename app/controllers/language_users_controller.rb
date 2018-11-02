class LanguageUsersController < ApplicationController
    def new
        @language_user = LanguageUser.new
    end

    def create
        @language_user = LanguageUser.new(language_params)
        @language_user.save
        redirect_to "/"
    end

    private
    def language_params
        params.require(:language_user).permit(:user_id, :language_id)
    end
end
