Rails.application.routes.draw do

  namespace :api do
    get 'agenda/all'
  end

  namespace :api do
    get 'agenda/all'
  end

  namespace :api,constraints: {format: :json} do
    get 'people' => 'agenda#all'
    get 'single' => 'agenda#single'
    get 'new' => 'agenda#new'
    get 'show' => 'agenda#show'
    
  end

end
