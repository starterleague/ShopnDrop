class CartItemsController < ApplicationController
  # GET /cart_items
  # GET /cart_items.json
  
  layout nil
  
  def index
    @cart_items = cart.cart_items.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cart_items }
    end
  end

  # GET /cart_items/1
  # GET /cart_items/1.json
  def show
    @cart_item = cart.cart_items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cart_item }
    end
  end

  # GET /cart_items/new
  # GET /cart_items/new.json
  def new
    @cart_item = CartItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cart_item }
    end
  end

  # GET /cart_items/1/edit
  def edit
    @cart_item = cart.cart_items.find(params[:id])
  end

  # POST /cart_items
  # POST /cart_items.json
  def create
    @cart_item = cart.cart_items.build(:product_id => params[:product_id])
    @cart_item.price = @cart_item.product.price
    
    respond_to do |format|
      if @cart_item.save
        format.html { redirect_to root_url, notice: 'Cart item was successfully created.' }
        format.json { render json: @cart_item, status: :created, location: @cart_item }
      else
        format.html { render action: "new" }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cart_items/1
  # PUT /cart_items/1.json
  def update
    @cart_item = cart.cart_items.find(params[:id])

    respond_to do |format|
      if @cart_item.update_attributes(params[:cart_item])
        format.html { redirect_to @cart_item, notice: 'Cart item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_items/1
  # DELETE /cart_items/1.json
  def destroy
    @cart_item = cart.cart_items.find(params[:id])
    @cart_item.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :ok }
    end
  end
end
