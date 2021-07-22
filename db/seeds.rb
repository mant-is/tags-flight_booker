def generate_code
  char_set = Array('A'..'Z')
  Array.new(3) { char_set.sample }.join
end

def random_time_of_day
  Time.now + rand(1..5).days + rand(0..23).hours + rand(0..59).minutes
end

def random_date
  Date.today + rand(1..5)
end

11.times { Airport.create code: generate_code }

999.times { Flight.create to_airport_id: rand(1..11), from_airport_id: rand(1..11), start: random_date, leaves_at: random_time_of_day, duration: rand(120..480) }

