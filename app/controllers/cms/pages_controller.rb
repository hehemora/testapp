module Cms
  class PagesController < ApplicationController
      layout 'cms'
      before_action :check, only: [:is_editor]
      def cms_page
          if helpers.current_user.blank?
            return render plain: '401 Unauthorized', status: :unauthorized
          end
          # if !helpers.is_editor
          #   return render plain: '403 Forbidden', status: :forbidden
          # end
          # @articles = Article.all
          @articles = Article.paginate(page: params[:page], per_page: 10)
      end
  end
end