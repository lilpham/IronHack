Rails.application.routes.draw do
	resources :concerts, only: [:new, :create, :show]
end
