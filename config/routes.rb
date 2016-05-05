Rails.application.routes.draw do

	devise_for :users
	root 'index#index'
	get 'secrect' => 'secrect#index'
	resources :users

	resources :products, only: [:index]
	resource :cart, only: [:show]
	resources :order_items, only: [:create, :update, :destroy]
	#root to: "products#index"
end
