Rails.application.routes.draw do

  namespace :api do
    get 'agenda/all'
  end

  # namespace :api do
    # get 'agenda/all'
  # end

  namespace :api,constraints: {format: :json},defaults: { format: 'json' } do
    get 'people' => 'agenda#all'
    get 'single' => 'agenda#single'
    # get 'new' => 'agenda#new'
    get 'users' => 'users#show'
    get 'users/:email' => 'users#login'
    get 'users/:id' => 'users#show'
    post 'users/new' => 'users#new'
    get 'orders' => 'orders#show'
    get 'deal' => 'deal#show'
    post 'deal' => 'deal#new'
    get 'dealorder' => 'deal_order#show'
    
  end

end
