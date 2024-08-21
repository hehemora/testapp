class FillArticles < ActiveRecord::Migration[6.1]
  def change
    # Опубликованные
    Article.create!(title: "Новость 1", body: "Body1", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 2", body: "Body2", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 3", body: "Body3", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 4", body: "Body4", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 5", body: "Body5", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 6", body: "Body6", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 7", body: "Body7", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 8", body: "Body8", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 9", body: "Body9", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 10", body: "Body10", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 11", body: "Body11", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 12", body: "Body12", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 13", body: "Body13", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 14", body: "Body14", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 15", body: "Body15", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 16", body: "Body16", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 17", body: "Body17", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 18", body: "Body18", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 19", body: "Body19", article_statuses_id: ArticleStatus.find_by(status: "ready").id)
    Article.create!(title: "Новость 20", body: "Body20", article_statuses_id: ArticleStatus.find_by(status: "ready").id)

    #Черновики
    Article.create!(title: "Новость 21", body: "Body21")
    Article.create!(title: "Новость 22", body: "Body22")
    Article.create!(title: "Новость 23", body: "Body23")
    Article.create!(title: "Новость 24", body: "Body24")
    Article.create!(title: "Новость 25", body: "Body25")
    Article.create!(title: "Новость 26", body: "Body26")
    Article.create!(title: "Новость 27", body: "Body27")
    Article.create!(title: "Новость 28", body: "Body28")
    Article.create!(title: "Новость 29", body: "Body29")
    Article.create!(title: "Новость 30", body: "Body30")
  end
end
