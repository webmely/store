Rails.application.routes.draw do
	root 'index#index'

	devise_for :users 
	resources :users
	resources :products
	resource :cart, only: [:show]
	resource :checkout, only: [:show]
	resources :order_items, only: [:create, :update, :destroy]

	scope module: 'admin' ,as: 'admin', :path => 'admin' do
		root 'dashboard#index'
		resources :products
		resources :users
		resources :categories
	end
	# devise_scope :users do
	# 	# get '/users/sign_out' => 'devise/sessions#destroy'
	# end
end
