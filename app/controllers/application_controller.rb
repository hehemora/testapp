class ApplicationController < ActionController::Base
    add_flash_types :info, :error, :success
    def current_user
        if helpers.current_user.blank?
            return render plain: '401 Unauthorized', status: :unauthorized
        end
    end
end
