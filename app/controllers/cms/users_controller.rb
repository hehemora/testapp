module Cms
    class UsersController < CmsController
        before_action :is_editor, only: [:index, :update]
        def index
            @users = User.paginate(page: params[:page], per_page: 10)
        end
    
        def update
            @user = User.find(params[:id])
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