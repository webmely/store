class Product < ActiveRecord::Base
  has_many :categories_products
  has_many :categories, through: :categories_products
  has_many :order_items
  mount_uploader :thumbnail, ProductPhotoUploader
  accepts_nested_attributes_for :categories_products
end