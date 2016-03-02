class DeliveriesController < ApplicationController
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]

  # GET /deliveries
  # GET /deliveries.json
  def index
    @deliveries = Delivery.all
    @days=Day.all
    @korans=Koran.all
  end

  # GET /deliveries/1
  # GET /deliveries/1.json
  def show
  end

  # GET /deliveries/new
  def new
    @delivery = Delivery.new
    @days=Day.all
    @korans=Koran.all
  end

  # GET /deliveries/1/edit
  def edit
    @days=Day.all
    @korans=Koran.all
  end

  # POST /deliveries
  # POST /deliveries.json
  def create
    @days=Day.all
    @korans=Koran.all

    @customer=Customer.new(customer_params);
    @customer.save;
    params[:delivery][:customer_id]=@customer.id
    @delivery = Delivery.new(delivery_params);
    respond_to do |format|
      if @delivery.save
        params[:koran_option][:delivery_id]=@delivery.id
        params[:koran_option][:koran_id]=@delivery.koran_id
        @koran_option=KoranOption.new(option_params);
        @koran_option.save
        format.html { redirect_to @delivery, notice: 'Delivery was successfully created.' }
        format.json { render :show, status: :created, location: @delivery }
      else
        format.html { render :new }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveries/1
  # PATCH/PUT /deliveries/1.json
  def update
    @days=Day.all
    @korans=Koran.all
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html { redirect_to @delivery, notice: 'Delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render :edit }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery.destroy
    respond_to do |format|
      format.html { redirect_to deliveries_url, notice: 'Delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    def option_params
      params.require(:koran_option).permit(:koran_id, :koran_option_id, :delivery_id);
    end

    def customer_params
      params.require(:customer).permit(:name, :address, :building_name, :room_number, :latitude, :longitude, :image);
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_params
      params.require(:delivery).permit(:customer_id, :koran_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
    end
end
