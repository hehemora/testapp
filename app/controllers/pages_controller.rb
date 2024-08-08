class PagesController < ApplicationController
  def mainpage
  end
  def secondpage
    # @articles = Article.all
    @articles = Article.paginate(page: params[:page], per_page: 10)
    if helpers.current_user.blank?
      render plain: '401 Unauthorized', status: :unauthorized
    end
  end
end
