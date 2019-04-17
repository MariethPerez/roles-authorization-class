class NewsArticlesController < ApplicationController
  def index
    @news_articles = authorize(NewsArticle.all)
  end

  def show
    @news_article = NewsArticle.find(params[:id])
  end
end
