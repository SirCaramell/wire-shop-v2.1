class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  swagger_controller :customers, 'Customers'
  skip_before_actionc :verify_authenticity_token

  # GET /customers
  # GET /customers.json
  swagger_api :index do
    summary 'Return all customers'
    notes 'Notes...'
  end
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  swagger_api :show do
    summary 'Returns one student'
    param :path, :id, :integer, :required, "Customers id"
    notes 'Notes...'
  end
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  swagger_api :create do
    summary "Create a customer"
    param :form, "customer[first_name]", :string, :required, "Customers first_name"
    param :form, "customer[customer_id]", :string, :required, "Customer customer_id"
    param :form, "customer[password]", :string, :required, "Customer password"
  end
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:customer_id, :first_name, :last_name, :phone, :adress, :city, :email, :postal_code, :password, :password_confirmation)
    end
end
