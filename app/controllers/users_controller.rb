class UsersController < ApplicationController
    def auth
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Вы прошли регистрацию"
            redirect_to  main_page_cms_pages_path
        else
            render:new
        end
    end

    private
    def user_params
        params.require(:user).permit(:login, :password, :password_confirmation, :role_id)
    end
end
