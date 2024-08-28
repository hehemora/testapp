class PagesController < ApplicationController
  before_action :current_user, only: [:main_page]
  def login_page
  end
  def main_page
    @articles = Article.where(article_statuses_id: 2).paginate(page: params[:page], per_page: 10)
  end
end
