class Category < ActiveRecord::Base
	has_many :children, class_name: 'Category', foreign_key: :parent_id
	belongs_to :parent, class_name: 'Category', foreign_key: :parent_id
	
	has_many :categories_products
	has_many :products, through: :categories_products
end
