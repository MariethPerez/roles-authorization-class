class NewsArticlesController < ApplicationController
  def index
    authorize(NewsArticle) # NewsArticlePolicy.index?
    @news_articles = policy_scope(NewsArticle.all) # NewsArticlePolicy::Scope.resolve
  end

  def show
    authorize(NewsArticle)
    @news_article = policy_scope(NewsArticle.find(params[:id]))
  end
end
