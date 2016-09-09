Rails.application.routes.draw do
	root :to => "products#home"
	resources :users, only:[:index, :show, :new, :create] do
		resources :products
	end
end

# root GET    /                                                        site#home
#     user_products GET    /users/:user_id/products(.:format)          products#index
#                   POST   /users/:user_id/products(.:format)          products#create
#  new_user_product GET    /users/:user_id/products/new(.:format)      products#new
# edit_user_product GET    /users/:user_id/products/:id/edit(.:format) products#edit
#      user_product GET    /users/:user_id/products/:id(.:format)      products#show
#                   PATCH  /users/:user_id/products/:id(.:format)      products#update
#                   PUT    /users/:user_id/products/:id(.:format)      products#update
#                   DELETE /users/:user_id/products/:id(.:format)      products#destroy
#             users GET    /users(.:format)                            users#index
#                   POST   /users(.:format)                            users#create
#          new_user GET    /users/new(.:format)                        users#new
#              user GET    /users/:id(.:format)                        users#show


