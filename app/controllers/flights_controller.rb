class FlightsController < ApplicationController 
  def index
    if params[:flight]
      @flights = Flight.where(
                   from_airport_id: params[:flight][:from_airport],
                   to_airport_id: params[:flight][:to_airport],
                   start: DateTime.strptime(params[:flight][:start], '%m/%d/%Y')).all
    end
  end 
end

