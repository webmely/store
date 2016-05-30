class OrdersController < ApplicationController
  before_action :set_order, only: [:show]
<<<<<<< HEAD

=======
>>>>>>> 76f4dab57dc761140a05366062152429190fc56b
  def index
    @orders = current_user.orders.order("id DESC").page(params[:page]).per(10)
  end

  def show
    @order_items = @order.order_items
  end

  def new

  end

  def success

  end

  def cancel
    order_id = params[:order_id].to_i
    Order.update(order_id, :order_status_id => 4)
    redirect_to orders_path
  end

  #function checkout
  def create
    @order = Order.new(order_params)
    @order.order_status_id = 1

    if @order.save
      session["cart"].each do |h|
        #create orderdetails
        item = Product.find(h['id'])
        unit_price = item.price_current.present? ? item.price_current : item.price

        @order_item = OrderItem.new
        @order_item.order_id = Order.maximum("id")
        @order_item.product_id = item.id
        @order_item.unit_price = unit_price
        @order_item.quantity = h['quantity']
        @order_item.total_price = unit_price*h['quantity']
        @order_item.save
      end
      session["cart"] = []
      redirect_to success_orders_path
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :reciver_fullname, :reciver_email, :reciver_phone, :reciver_address, :subtotal, :discount, :shipping, :total, :note)
  end
end
