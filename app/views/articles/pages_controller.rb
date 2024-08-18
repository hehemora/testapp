class PagesController < ApplicationController
  def mainpage
  end
  def secondpage
    if helpers.current_user.blank?
      render plain: '401 Unauthorized', status: :unauthorized
    end
    if helpers.is_editor
      redirect_to editor_page_path
    end
    # @articles = Article.all
    @articles = Article.where(article_statuses_id: 2).paginate(page: params[:page], per_page: 10)
    # @articles = Article.paginate(page: params[:page], per_page: 10)
  end

  def editor_page
    if helpers.current_user.blank?
      return render plain: '401 Unauthorized', status: :unauthorized
    end
    if !helpers.is_editor
      return render plain: '403 Forbidden', status: :forbidden
    end
    # @articles = Article.all
    @articles = Article.paginate(page: params[:page], per_page: 10)
  end
end
