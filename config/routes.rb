Rails.application.routes.draw do
	root 'static_pages#home'
	post '/', to: 'static_pages#create'

	get '/send', to: 'static_pages#send'
end
