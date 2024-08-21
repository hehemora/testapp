class PagesController < ApplicationController
  def login_page
  end
  def main_page
    if helpers.current_user.blank?
      render plain: '401 Unauthorized', status: :unauthorized
    end
    # if helpers.is_editor
    #   redirect_to editor_page_path
    # end
    # @articles = Article.all
    @articles = Article.where(article_statuses_id: 2).paginate(page: params[:page], per_page: 10)
    # @articles = Article.paginate(page: params[:page], per_page: 10)
  end
end
