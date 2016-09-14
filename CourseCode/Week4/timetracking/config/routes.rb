Rails.application.routes.draw do

	resources :projects, only:[:index, :show, :new, :create] do 
		resources :time_entries, except: [:show]
	end

	get '/', to: "site#home"
	get '/contact', to: "site#contact"
	get '/say_name', to: "site#say_name"
c
end