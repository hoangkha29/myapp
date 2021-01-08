class CustomersController < ApplicationController
  def index
    @Customer= Customer.all
  end

  def show
    @Customer= Customer.find(params[:id])
  end

  def edit
    @Customer = Customer.find(params[:id])
  end

  def update
    @Customer = Customer.find(params[:id])

    if @Customer.update(customer_params)
      flash[:notice] = "Post was successfully edited"
      redirect_to @Customer
    else
      render :edit
    end
  end

  def destroy
    @Customer = Customer.find(params[:id])
    @Customer = Customer.destroy(params[:id])

    redirect_to root_path
  end

  private
  def customer_params
    params.require(:customer).permit(:contactFirstName, :contactLastName)
  end
end
