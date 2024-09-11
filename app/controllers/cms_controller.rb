class CmsController < ApplicationController
    layout 'cms'
    add_flash_types :info, :error, :success
    def is_editor
        if helpers.current_user.blank?
            return render plain: '401 Unauthorized', status: :unauthorized
        end
        if !helpers.is_editor
            return render plain: '403 Forbidden', status: :forbidden
        end
    end
end