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
      @order_status = OrderStatus.new(alert_params)
      respond_to do |format|
        if @order_status.save
          format.html { redirect_to :back, notice: 'Created Successfully!' }
          format.json { render :show, status: :created, location: @order_status }
        else
          format.html { render :new }
          format.json { render json: @order_status.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @order_status.update(safe_params)
          format.html { redirect_to :back, notice: 'Updated Successfully!' }
          format.json { render :show, status: :updated, location: @order_status }
        else
          format.html { render :edit }
          format.json { render json: @order_status.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      respond_to do |format|
        if @order_status.destroy
          format.html { redirect_to :back, notice: 'Deleted Successfully!' }
          format.json { render :show, status: :deleted, location: @order_status }
        else
          format.html { redirect_to :back }
          format.json { render json: @order_status.errors, status: :unprocessable_entity }
        end
      end
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