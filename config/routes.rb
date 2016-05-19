Rails.application.routes.draw do
	root 'index#index'

	devise_for :users
	resources :users
	resources :products

	get 'cart/index'
	resources :cart do
		collection do
			get 'add_to_cart'
			get 'update_quantity_to_cart'
			get 'delete_product_to_cart'
		end
	end

	resources :orders

	scope module: 'admin' ,as: 'admin', :path => 'admin' do
		root 'dashboard#index'
		resources :products
		resources :users
		resources :categories
		resources :order_statuses
		resources :orders do
			collection do
				post 'update_status'
			end
		end
	end
end
