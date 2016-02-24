class WeatherController < ApplicationController
	require 'forecast_io'
  def index
  	ForecastIO.api_key = 'c4e6472a3c00209953cc61e4db075e65'
  	@forecast=ForecastIO.forecast('33.580715','130.428413', params: { units: 'si', exclude: 'minutely,alerts,flags' })#Hakata Eki Minami
  end
end
