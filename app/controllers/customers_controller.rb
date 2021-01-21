class CustomersController < ApplicationController
  def index
    # @Customer= Customer.all.page(params[:page])

    @Customer = if params[:s]
               Customer.where('contactFirstName LIKE ?', "%#{params[:s]}%").page(params[:page])
               else
               @Customer= Customer.all.page(params[:page]).per(10)
                end
  end

  def new
    @Customer = Customer.new
  end

  def create
    # get new customer with customer params
    @Customer = Customer.new(customer_params)

    # if create new
    if @Customer.save
      # notice
      flash[:notice] = "New Customer was successfully created"
      redirect_to @Customer
    else
      render :new
    end
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

    redirect_to customers_path
  end

  private
  def customer_params
    params.require(:customer).permit(:customerNumber, :customerName, :contactFirstName, :contactLastName, :phone, :city, :country, :term )
  end
end
