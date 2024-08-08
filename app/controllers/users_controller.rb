class UsersController < ApplicationController
    add_flash_types :info, :error, :success
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
            redirect_to secondpage_path
        else
            render:new
        end
    end
    
    def index
        # @users = User.all
        @users = User.paginate(page: params[:page], per_page: 10)
        if helpers.current_user.blank?
          render plain: '401 Unauthorized', status: :unauthorized
        end
        if !helpers.is_editor
          render plain: '403 Forbidden', status: :forbidden
        end
    end

    def update
        if helpers.current_user.blank?
            render plain: '401 Unauthorized', status: :unauthorized
        end
        if !helpers.is_editor
            render plain: '403 Forbidden', status: :forbidden
        end
        @user = User.find(params[:id])
        # if @user.role_id == Role.find_by(rolename: "user").id
        #     @user.role_id == Role.find_by(rolename: "editor").id
        # if @user.role_id == Role.find_by(rolename: "editor").id
        #     @user.role_id == Role.find_by(rolename: "user").id
        if @user.update user_params
            redirect_to secondpage_path
            flash[:notice] = "Изменения сохранены"
        else
            render:index
        end
    end

    private
    def user_params
        params.require(:user).permit(:login, :password, :password_confirmation, :role_id)
    end
end
