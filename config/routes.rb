Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'

  get 'members/new'

  post 'administrators/create'
  get 'adminstrators/show_all_members'

  get 'galleries/index'

  get 'about/index'

  get 'welcome/index'

  root 'welcome#index'

  resources :members
  resources :administrators
  resources :events
  resources :galleries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
