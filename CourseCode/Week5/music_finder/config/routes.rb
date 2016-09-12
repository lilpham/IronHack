Rails.application.routes.draw do
	root to: 'site#home'
	resources :concerts, only: [:show, :new, :create, :index] do 
		resources :comments
	end
end
