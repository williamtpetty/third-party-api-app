class HolidaysController < ApplicationController

  def index
    key = Rails.application.credentials.holiday_api_key
    response = HTTP.get("https://holidayapi.com/v1/holidays?pretty&country=#{params[:country]}&year=#{params[:year]}&key=#{key}")
    render json: response.parse(:json)
  end

end
