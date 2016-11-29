class OrdersController < ApplicationController

  def index
    @orders = current_user.orders.where("quantity > 0 AND state = ?", false)
    @total = 0
    if @orders != nil
      @orders.each do |order|
        @total += order.product.price * order.quantity
      end
    end
  end

  def create
    if Order.exists?(:user_id => current_user.id, :product_id => params[:product_id])
      @order = Order.find_by(:user_id => current_user.id, :product_id => params[:product_id])
      save_order(@order)
    else
      @order = current_user.orders.build(order_params)
      save_order(@order)
    end
  end

  def update

  end

  private
  def order_params
    params.permit(:product_id, :user_id)
  end

  def save_order(order)
    order.quantity += 1
    if order.save
      redirect_to orders_path
    else
      # notice: "You can not buy it"
    end
  end
end
