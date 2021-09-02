module FlightsHelper
  def airport_select
    Airport.all.map { |a| [a.code, a.id] }.uniq.sort
  end

  def date_select
    Flight.all.map { |d| d.start.strftime("%m/%d/%Y")}.uniq.sort
  end
end
