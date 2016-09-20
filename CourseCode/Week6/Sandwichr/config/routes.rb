Rails.application.routes.draw do

post '/sandwiches/:sandwich_id/ingredients/add', to: "sandwiches#add_ingredient" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :sandwiches, only:[:index,:show], controller: "sandwich_views"
  scope "/api" do 
	resources :sandwiches, except: [:new, :edit]
	resources :ingredients, except: [:new, :edit] 
  	post "/sandwiches/:id/ingredients/add" => 'sandwiches#add_ingredient'
  end

end
