class BookingDecorator < Draper::Decorator
  delegate_all

  def flight_id
    object.flight.id
  end

  def from_airport 
    Airport.find(object.flight.from_airport_id).code
  end

  def to_airport 
    Airport.find(object.flight.to_airport_id).code
  end

  def departure 
    object.flight.start.strftime('%l:%M %P') 
  end

  def duration
    object.flight.humanize_duration_long
  end

  def total_passengers
    object.passengers.count
  end

  def total_passengers_a
    object.passengers.to_a.count
  end

end
