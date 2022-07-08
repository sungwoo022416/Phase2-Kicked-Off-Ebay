class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.search(params[:search])
  end

  def favorites
    array = []
    Product.all.each do |p|
      p.categories.each do |b|
        if @user.categories.include?(b)
          array << p
        end
      end 
    end

    @products = array

    render 'products/index' 
  end

  # GET /products/1 or /products/1.json
  def show
      @product = Product.find(params[:id])
      @bid = Bid.new
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.create(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_path(@product), notice: "|#{@product.name}| has entered to the auction!!" }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { redirect_to product_path, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_path, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :category, :price,:user_id, :search, category_ids:[], categories_attributes: [:name])
    end
end
