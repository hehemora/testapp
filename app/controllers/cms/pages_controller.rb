module Cms
  class PagesController < CmsController
      # before_action :is_editor, only: [:cms_page]
      def login_page
      end
      def cms_page
          @articles = Article.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
      end
      
      def main_page
        @articles = Article.where(article_statuses_id: 2).order(created_at: :desc).paginate(page: params[:page], per_page: 10)
      end
  end
end