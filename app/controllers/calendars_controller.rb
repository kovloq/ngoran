class CalendarsController < ApplicationController
  before_action :require_login
  def index
    @calendar_jepang=Calendar.where("tipe=?","1").order("tanggal ASC");
    @calendar_asahi=Calendar.where("tipe=?","0").order("tanggal ASC");
    @scripts=Calendar.select("event as title,tanggal as start");
  end

  def edit
  end

  def new
  	@calendar=Calendar.new
  end

  def create
  	@calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to :controller => "calendars", :action => "index"
    else
      render :action => 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def calendar_params
    params.require(:calendar).permit(:tanggal, :event, :tipe)
  end

end
