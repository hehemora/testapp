class ArticlesController < ApplicationController
    add_flash_types :info, :error, :success
    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Статья успешно добавлена"
            redirect_to secondpage_path 
        else
            render:new
        end
    end

    def update
        @article = Article.find(params[:id])
        if @article.update article_params
            redirect_to secondpage_path
            flash[:notice] = "Изменения сохранены"
        else
            render:show
        end
    end

    def show
        if helpers.current_user.blank?
            render plain: '401 Unauthorized', status: :unauthorized
        end
        @article = Article.find(params[:id])
    end

    def destroy
        if helpers.current_user.blank?
            render plain: '401 Unauthorized', status: :unauthorized
        end
        if !helpers.is_editor
            render plain: '403 Forbidden', status: :forbidden
        end
        @article = Article.find(params[:id])
        if @article.destroy 
            redirect_to secondpage_path
            flash[:notice] = "Статья удалена"
        else
            render:show
        end
    end

    private
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
