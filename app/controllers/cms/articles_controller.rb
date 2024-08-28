module Cms
    class ArticlesController < CmsController
        before_action :is_editor, only: [:new, :show, :create, :update, :destroy, :publish]

        def new
            @article = Article.new
        end
        
        def show
            @article = Article.find(params[:id])
        end

        def create
            @article = Article.new(article_params)
            if @article.save
                flash[:notice] = "Статья успешно добавлена"
                redirect_to cms_cms_page_path 
            else
                render:new
            end
        end

        def update
            @article = Article.find(params[:id])
            if @article.update article_params
                redirect_to cms_cms_page_path
                flash[:notice] = "Изменения сохранены"
            else
                render:show
            end
        end

        def destroy
            @article = Article.find(params[:id])
            if @article.destroy 
                redirect_to cms_cms_page_path
                flash[:notice] = "Статья удалена"
            else
                render:show
            end
        end

        def publish
            @article = Article.find(params[:id])
            
            if @article.update(article_statuses_id: ArticleStatus.find_by(status: "ready").id)
                redirect_to cms_cms_page_path
                flash[:notice] = "Статья опубликована"
            else
                render:show
            end
        end

        private
        def article_params
            params.require(:article).permit(:title, :body)
        end
    end
end