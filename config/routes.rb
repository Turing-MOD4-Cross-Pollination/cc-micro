Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  namespace :api do
    namespace :v1 do
      post '/coordinates', to: 'coordinates#show' 
    end 
  end 
end
