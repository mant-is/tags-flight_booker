module BookingsHelper

  def booking_exists?
    params[:confirmation_number] && @result.any?
  end

end
