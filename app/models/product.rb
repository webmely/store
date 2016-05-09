class Product < ActiveRecord::Base
  has_many :order_items

  default_scope { where(active: true) }

  mount_uploader :thumbnail, ProductPhotoUploader
end