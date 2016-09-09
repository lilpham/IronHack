Rails.application.routes.draw do
	root :to => "site#home"

	resources :users, only:[:index, :show, :new, :create] do
		resources :products
	end

	# get '/index', to: 'products#index'

	# get '/users/new', to: 'users#new'

	# post '/users', to: 'users#create'

	# get '/users/:id', to: 'users#show'

	# get '/users/:id/product/new', to: 'product#new'
end


