class HomeController < ApplicationController
  def index
  	@korans=Koran.all
  end
end
