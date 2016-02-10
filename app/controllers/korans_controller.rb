class KoransController < ApplicationController
  before_action :set_koran, only: [:show, :edit, :update, :destroy]

  # GET /korans
  # GET /korans.json
  def index
    @korans = Koran.all
  end

  # GET /korans/1
  # GET /korans/1.json
  def show
  end

  # GET /korans/new
  def new
    @koran = Koran.new
  end

  # GET /korans/1/edit
  def edit
  end

  # POST /korans
  # POST /korans.json
  def create
    @koran = Koran.new(koran_params)

    respond_to do |format|
      if @koran.save
        format.html { redirect_to @koran, notice: 'Koran was successfully created.' }
        format.json { render :show, status: :created, location: @koran }
      else
        format.html { render :new }
        format.json { render json: @koran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /korans/1
  # PATCH/PUT /korans/1.json
  def update
    respond_to do |format|
      if @koran.update(koran_params)
        format.html { redirect_to @koran, notice: 'Koran was successfully updated.' }
        format.json { render :show, status: :ok, location: @koran }
      else
        format.html { render :edit }
        format.json { render json: @koran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /korans/1
  # DELETE /korans/1.json
  def destroy
    @koran.destroy
    respond_to do |format|
      format.html { redirect_to korans_url, notice: 'Koran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koran
      @koran = Koran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def koran_params
      params[:koran]
    end
end
