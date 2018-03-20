Rails.application.routes.draw do
  get 'members/new'

  get 'gallery/index'

  get 'about/index'

  get 'welcome/index'

  root 'welcome#index'
  
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
