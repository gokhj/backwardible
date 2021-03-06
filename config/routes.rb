require 'sidekiq/web'

# Rails.application.routes.draw do
#     authenticate :user, lambda { |u| u.admin? } do
#       mount Sidekiq::Web => '/sidekiq'
#     end


#   devise_for :users
#   root to: 'home#index'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do

  root 'home#index'
  get 'top', to: 'home#top'

  get 'search', to: 'search#index'
  get 'search/autocomplete', to: 'search#autocomplete'

  get 'table', to: 'table#index'
  get 'table/top', to: 'table#top'
end
