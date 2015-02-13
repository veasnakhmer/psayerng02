class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def sell_other
    #@products = Product.order("id DESC").all
    @products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
  end
  def sell_bicycle
    #@products = Product.order("id DESC").all
    @products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
  end
  def sell_house
	#@products = Product.order("id DESC").all
	@products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
  end
  def sell_land
	#@products = Product.order("id DESC").all
	@products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
  end
  def sell_car
	#@products = Product.order("id DESC").all
	@products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
  end
  def sell_moto
	#@products = Product.order("created_at DESC").all
	@products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
	
  end
  def sell_computer
	#@products = Product.order("id DESC").all
	@products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
  end
  def sell_phone
	#@products = Product.order("id DESC").all
	@products = Product.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
  end
  def index
   #@products = Product.order("id DESC").all
   @search = Product.search(params[:q])
   @products = @search.result.order("created_at DESC").all.paginate(:page => params[:page], :per_page => 10)
    
     #@products = Product.order("id DESC").paginate(:page => params[:page], :per_page => 10)
    # @products = Product.paginate(:page => params[:page], :per_page => 10)
    #@products = Product.all
   # @users = User.all
  end


  # GET /products/1
  # GET /products/1.json
  def show
     @products = Product.order("id DESC").all
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :phone, :email, :price, :category, :type, :description, :image, :image2, :image3)
    end
end
