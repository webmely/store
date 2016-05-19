module Admin
  class OrderStatusesController < BaseController
    before_action :set_order_status, only:[:show, :edit, :update, :destroy]
    @is_order_status_update = false

    def index
      @order_statuses = OrderStatus.all
      @order_status = OrderStatus.new
    end

    def show
      @order_status = OrderStatus.find(params[:id])
    end

    def edit
      @is_order_status_update = true
      @order_status = OrderStatus.find(params[:id])
    end

    def new
      @order_status = OrderStatus.new
    end

    def create
      @order_status = OrderStatus.new(safe_params)
      @order_status.save
      redirect_to :back
    end

    def update
      @order_status.update(safe_params)
      redirect_to :back
    end

    def destroy
      @order_status.destroy
      redirect_to :back
    end

    private
    def set_order_status
      @order_status = OrderStatus.find(params[:id])
    end

    def safe_params
      params.require(:order_status).permit(:name, :description)
    end
  end
end