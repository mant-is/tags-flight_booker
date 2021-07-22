def generate_code
  char_set = Array('A'..'Z')
  Array.new(3) { char_set.sample }.join
end

def random_time_of_day
  Time.now + rand(0..23).hours + rand(0..59).minutes
end

def random_date
  Date.today + rand(1..5)
end

def unique_airports
  from = rand(1..11)
  to = rand(1..11)

  while from == to
    to = rand(1..11)
  end
  
  Array.new.push(from).push(to)
end

11.times { Airport.create code: generate_code }

999.times do 
  to_from = unique_airports
  Flight.create(
    to_airport_id: to_from.first, 
    from_airport_id: to_from.last, 
    start: random_date, 
    leaves_at: random_time_of_day, 
    duration: rand(120..480)
  )

end 

