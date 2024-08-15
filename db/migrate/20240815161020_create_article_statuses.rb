class CreateArticleStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :article_statuses do |t|
      t.string :status
      t.timestamps
    end
    ArticleStatus.create(status: "draft")
    ArticleStatus.create(status: "ready")
    add_reference :articles, :article_statuses, index: true, foreign_key: { to_table: 'article_statuses' }, default: ArticleStatus.find_by(status: "draft").id
  end
end