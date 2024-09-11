class ArticlesController < ApplicationController
    before_action :current_user, only: [:show]
    def show
        @article = Article.find(params[:id])
    end

    private
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
