class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id).order("id DESC").page(params[:page]).per(10)
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def new

  end

  def success

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
      render 'success'
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :reciver_fullname, :reciver_email, :reciver_phone, :reciver_address, :subtotal, :discount, :shipping, :total, :note)
  end
end