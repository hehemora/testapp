class ArticlesController < ApplicationController
    add_flash_types :info, :error, :success

    def show
        if helpers.current_user.blank?
            return render plain: '401 Unauthorized', status: :unauthorized
        end
        @article = Article.find(params[:id])
    end

    private
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
