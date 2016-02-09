class CalendarsController < ApplicationController
  def index
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
    params.require(:calendar).permit(:tanggal, :event)
  end

end
