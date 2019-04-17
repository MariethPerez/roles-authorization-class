Rails.application.routes.draw do
  get 'news_articles/index'
  get 'news_articles/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
