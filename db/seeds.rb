# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new
user.email = "test@gmail.com"
user.password = "123456789"
user.password_confirmation = "123456789"
user.fullname = "Test User"
user.address = "Webmely.com"
user.phone = "01668854156"
user.website = "http://webmely.com"
user.biographical = "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
user.save

Product.delete_all
Product.create! id: 1, name: "Cotton 100% - Pink Shirt", price: 98, price_current: 78, quantity: 20, description: "<p>1. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "1. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 2, name: "Black Long Lady Shirt", price: 128, quantity: 20, description: "<p>2. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "2. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 3, name: "Night Dress For Ladies", price: 34, quantity: 20, description: "<p>3. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "3. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 4, name: "Long Grey Dress - Special", price: 76, quantity: 20, description: "<p>4. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "4. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 5, name: "Grey Lady Hat", price: 67, price_current: 21, quantity: 20, description: "<p>5. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "5. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 6, name: "Beach Black Lady Suit", price: 56, quantity: 20, description: "<p>6. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "6. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 7, name: "Town Dress - Black", price: 154, quantity: 20, description: "<p>7. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "7. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 8, name: "Chick Lady Fashion", price: 167, quantity: 20, description: "<p>8. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "8. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 9, name: "Pink Dress 100% Cotton", price: 44, quantity: 20, description: "<p>9. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "9. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 10, name: "White And Black", price: 31, quantity: 20, description: "<p>10. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "10. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 11, name: "Long Black Top", price: 99, quantity: 20, description: "<p>11. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "11. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true
Product.create! id: 12, name: "Black Fashion Hat", price: 77, quantity: 20, price_current: 65, description: "<p>12. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p> <p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>", short_description: "12. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", active: true


OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"


Category.delete_all
Category.create! id: 1, name: "Category 1", description: "Category 1"
Category.create! id: 2, name: "Category 2", parent_id: 1, description: "Category 2"
Category.create! id: 3, name: "Category 3", description: "Category 3"
Category.create! id: 4, name: "Category 4", description: "Category 4"