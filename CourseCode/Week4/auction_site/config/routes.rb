Rails.application.routes.draw do
	post '/users/', to: 'users#create'

	get '/users/new', to: 'users#new'

	get '/users/:id', to: 'users#show'

	get '/users/:id/product/new', to: 'product#new'

end
