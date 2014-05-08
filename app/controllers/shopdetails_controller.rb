class ShopdetailsController < ApplicationController
  before_action :set_shopdetail, only: [:show, :edit, :update, :destroy]

  # GET /shopdetails
  # GET /shopdetails.json
  def index
    @shopdetails = Shopdetail.all
  end

  # GET /shopdetails/1
  # GET /shopdetails/1.json
  def show
  end

  # GET /shopdetails/new
  def new
    @shopdetail = Shopdetail.new
  end

  # GET /shopdetails/1/edit
  def edit
  end

  # POST /shopdetails
  # POST /shopdetails.json
  def create
    @shopdetail = Shopdetail.new(shopdetail_params)

    respond_to do |format|
      if @shopdetail.save
        format.html { redirect_to @shopdetail, notice: 'Shopdetail was successfully created.' }
        format.json { render :show, status: :created, location: @shopdetail }
      else
        format.html { render :new }
        format.json { render json: @shopdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopdetails/1
  # PATCH/PUT /shopdetails/1.json
  def update
    respond_to do |format|
      if @shopdetail.update(shopdetail_params)
        format.html { redirect_to @shopdetail, notice: 'Shopdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopdetail }
      else
        format.html { render :edit }
        format.json { render json: @shopdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopdetails/1
  # DELETE /shopdetails/1.json
  def destroy
    @shopdetail.destroy
    respond_to do |format|
      format.html { redirect_to shopdetails_url, notice: 'Shopdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopdetail
      @shopdetail = Shopdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopdetail_params
      params[:shopdetail]
    end
end
