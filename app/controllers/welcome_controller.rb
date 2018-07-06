class WelcomeController < ApplicationController
  def test
	  response = HTTParty.get("https://api.darksky.net/forecast/93b8f0cb05e622acaea83eab957b4dd6/29.4241,-98.4936")
	  
	  @latitude = response['latitude']
	  @longitude = response['longitude']
	  @timezone = response['timezone']
	  @daily = response['daily']
	  @temperatureHigh = response['daily']['data'][0]['temperatureHigh']
	  @temperatureLow = response['daily']['data'][0]['temperatureLow']
  end

  def index
  end
end
