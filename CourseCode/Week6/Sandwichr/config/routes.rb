Rails.application.routes.draw do
  resources :sandwiches, except: [:new, :edit]
  resources :ingredients, except: [:new, :edit] 

post '/sandwiches/:sandwich_id/ingredients/add', to: "sandwiches#add_ingredient" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
