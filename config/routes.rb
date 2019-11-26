Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

    get '/articles/new', to: 'articles#new', as: :new_article
    post '/articles', to: 'articles#create'
  get 'articles/:id', to: 'articles#show'

  patch 'articles/:id', to: 'articles#update'

  get 'articles', to: 'articles#index'

end
