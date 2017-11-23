class CreateCartsProductsController < ApplicationController
  before_action :set_create_carts_product, only: [:show, :edit, :update, :destroy]

  # GET /create_carts_products
  # GET /create_carts_products.json
  def index
    @create_carts_products = CreateCartsProduct.all
  end

  # GET /create_carts_products/1
  # GET /create_carts_products/1.json
  def show
  end

  # GET /create_carts_products/new
  def new
    @create_carts_product = CreateCartsProduct.new
  end

  # GET /create_carts_products/1/edit
  def edit
  end

  # POST /create_carts_products
  # POST /create_carts_products.json
  def create
    @create_carts_product = CreateCartsProduct.new(create_carts_product_params)

    respond_to do |format|
      if @create_carts_product.save
        format.html { redirect_to @create_carts_product, notice: 'Create carts product was successfully created.' }
        format.json { render :show, status: :created, location: @create_carts_product }
      else
        format.html { render :new }
        format.json { render json: @create_carts_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_carts_products/1
  # PATCH/PUT /create_carts_products/1.json
  def update
    respond_to do |format|
      if @create_carts_product.update(create_carts_product_params)
        format.html { redirect_to @create_carts_product, notice: 'Create carts product was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_carts_product }
      else
        format.html { render :edit }
        format.json { render json: @create_carts_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_carts_products/1
  # DELETE /create_carts_products/1.json
  def destroy
    @create_carts_product.destroy
    respond_to do |format|
      format.html { redirect_to create_carts_products_url, notice: 'Create carts product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_carts_product
      @create_carts_product = CreateCartsProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_carts_product_params
      params.require(:create_carts_product).permit(:quantity)
    end
end
