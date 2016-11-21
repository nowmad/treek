Rails.application.routes.draw do
  resources :items
  get 'items/search/*term' => 'items#search', :as => :item_search # item_search_path(:term => tag.name)
  get 'pages/about'

  root 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
