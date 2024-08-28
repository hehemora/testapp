module Cms
    class ArticlesController < ApplicationController
        layout 'cms'
        before_action :check, only: [:is_editor]

        def new
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
            @article = Article.new
        end
        
        def show
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
            @article = Article.find(params[:id])
        end

        def create
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
            @article = Article.new(article_params)
            if @article.save
                flash[:notice] = "Статья успешно добавлена"
                redirect_to cms_cms_page_path 
            else
                render:new
            end
        end

        def update
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
            @article = Article.find(params[:id])
            if @article.update article_params
                redirect_to cms_cms_page_path
                flash[:notice] = "Изменения сохранены"
            else
                render:show
            end
        end

        def destroy
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
            @article = Article.find(params[:id])
            if @article.destroy 
                redirect_to cms_cms_page_path
                flash[:notice] = "Статья удалена"
            else
                render:show
            end
        end

        def publish
            if helpers.current_user.blank?
                return render plain: '401 Unauthorized', status: :unauthorized
            end
            # if !helpers.is_editor
            #     return render plain: '403 Forbidden', status: :forbidden
            # end
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