Rails.application.routes.draw do
	root to: 'site#home'
	resources :concerts, only: [:show, :new, :create, :index]
end
