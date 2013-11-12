class InfoProductsController < ApplicationController
  before_action :set_info_product, only: [:show, :edit, :update, :destroy]

  # GET /info_products
  # GET /info_products.json
  def index
    @info_products = InfoProduct.all
  end

  # GET /info_products/1
  # GET /info_products/1.json
  def show
  end

  # GET /info_products/new
  def new
    @info_product = InfoProduct.new
  end

  # GET /info_products/1/edit
  def edit
  end

  # POST /info_products
  # POST /info_products.json
  def create
    @info_product = InfoProduct.new(info_product_params)

    respond_to do |format|
      if @info_product.save
        format.html { redirect_to @info_product, notice: 'Info product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @info_product }
      else
        format.html { render action: 'new' }
        format.json { render json: @info_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_products/1
  # PATCH/PUT /info_products/1.json
  def update
    respond_to do |format|
      if @info_product.update(info_product_params)
        format.html { redirect_to @info_product, notice: 'Info product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @info_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_products/1
  # DELETE /info_products/1.json
  def destroy
    @info_product.destroy
    respond_to do |format|
      format.html { redirect_to info_products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_product
      @info_product = InfoProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_product_params
      params.require(:info_product).permit(:title, :description, :image_id, :price)
    end
end
