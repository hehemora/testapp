class ApplicationController < ActionController::Base
    add_flash_types :info, :error, :success
    def is_editor
        if @current_user.role_id == Role.find_by(rolename: "editor").id
            return true
        end
    end
end
