module Cms
    class UsersController < ApplicationController
        layout 'cms'
        before_action :check, only: [:is_editor]
        def index
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
            # @users = User.all
            @users = User.paginate(page: params[:page], per_page: 10)
        end
    
        def update
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
            @user = User.find(params[:id])
            # if @user.role_id == Role.find_by(rolename: "user").id
            #     @user.role_id == Role.find_by(rolename: "editor").id
            # if @user.role_id == Role.find_by(rolename: "editor").id
            #     @user.role_id == Role.find_by(rolename: "user").id
            if @user.update user_params
                redirect_to cms_cms_page_path
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
end