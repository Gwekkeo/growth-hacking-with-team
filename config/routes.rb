Rails.application.routes.draw do
	root 'static_pages#home'
	post '/', to: 'static_pages#create'

	get '/sending', to: 'static_pages#sending'


	get '/home', to: "static_pages#home"
	get '/cursus', to: "static_pages#temoigne"
	get '/contact', to: "static_pages#cursus"
end
