class Api::ArticlesController < ApplicationController
    def index
        articles = Article.order(created_at: :desc).select(:id, :title)
        render json: articles
    end

    def show
        id = params[:data].present? ?  params[:data][:id] : params[:id]
        article = Article.find_by_id(id)
        if article.present?
            render json: {
                id: article.id,
                title: article.title,
                body: article.body,
                created_at: article.created_at
            }
        else
            render json: {error: 'Article not found'}
        end
    end
end