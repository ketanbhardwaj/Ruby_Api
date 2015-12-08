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
    get 'new' => 'agenda#new'
    get 'users' => 'users#show'
    get 'orders' => 'orders#show'
    
  end

end
