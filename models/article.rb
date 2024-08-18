class Article < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true, uniqueness: true
    belongs_to :article_statuses, class_name: "ArticleStatus"
end