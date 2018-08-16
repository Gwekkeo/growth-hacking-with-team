Rails.application.routes.draw do
	root 'static_pages#home'
	post '/', to: 'static_pages#create'

	get '/sending', to: 'static_pages#sending'
end
