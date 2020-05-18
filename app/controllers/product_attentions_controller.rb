class ProductAttentionsController < ApplicationController
  before_action :set_product_attention, only: [:show, :edit, :update, :destroy]

  # GET /product_attentions
  # GET /product_attentions.json
  def index
    @product_attentions = ProductAttention.all
  end

  # GET /product_attentions/1
  # GET /product_attentions/1.json
  def show
  end

  # GET /product_attentions/new
  def new
    @product_attention = ProductAttention.new
  end

  # GET /product_attentions/1/edit
  def edit
  end

  # POST /product_attentions
  # POST /product_attentions.json
  def create
    @product_attention = ProductAttention.new(product_attention_params)

    respond_to do |format|
      if @product_attention.save
        format.html { redirect_to @product_attention, notice: 'Product attention was successfully created.' }
        format.json { render :show, status: :created, location: @product_attention }
      else
        format.html { render :new }
        format.json { render json: @product_attention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_attentions/1
  # PATCH/PUT /product_attentions/1.json
  def update
    respond_to do |format|
      if @product_attention.update(product_attention_params)
        format.html { redirect_to @product_attention, notice: 'Product attention was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_attention }
      else
        format.html { render :edit }
        format.json { render json: @product_attention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_attentions/1
  # DELETE /product_attentions/1.json
  def destroy
    @product_attention.destroy
    respond_to do |format|
      format.html { redirect_to product_attentions_url, notice: 'Product attention was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_attention
      @product_attention = ProductAttention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_attention_params
      params.require(:product_attention).permit(:actual_danger_id, :product_id)
    end
end
