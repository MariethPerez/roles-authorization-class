class NewsArticlePolicy
  attr_reader :user, :news_article

  def initialize(user, news_article)
    @user = user
    @news_article = news_article
  end

  def update?
    user.admin? or not news_article.published_at?
  end
end
