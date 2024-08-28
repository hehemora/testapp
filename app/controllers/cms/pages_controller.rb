module Cms
  class PagesController < CmsController
      before_action :is_editor, only: [:cms_page]
      def cms_page
          @articles = Article.paginate(page: params[:page], per_page: 10)
      end
  end
end