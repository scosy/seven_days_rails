Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :entries
  patch 'entries', controller: :entries, action: :update, as: :journal_entry
  # Defines the root path route ("/")
  # root "articles#index"
end
