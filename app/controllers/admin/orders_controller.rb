module Admin
  class OrdersController < BaseController
    @is_order_details = false
    def index
      @orders = Order.order("created_at DESC").page(params[:page]).per(10)
      @order_statuses = OrderStatus.all
    end

    def show
      @is_order_details = true
      @order = Order.find(params[:id])
      @order_items = @order.order_items
    end

    def update_status
      order_id = params[:order_id].to_i
      order_status_id = params[:order_status_id].to_i
      respond_to do |format|
        if Order.update(order_id, :order_status_id => order_status_id)
          format.html
          format.json { render :json => {"status" => "success"}}
        else
          format.json { render :json => {"status" => "error" }}
        end
      end
    end
  end
end