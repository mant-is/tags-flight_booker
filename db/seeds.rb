def generate_code
  char_set = Array('A'..'Z')
  Array.new(3) { char_set.sample }.join
end

11.times { Airport.create code: generate_code }

999.times { Flight.create to_airport_id: rand(1..11), from_airport_id: rand(1..11), start: Date.today + rand(1..5), duration: rand(120..480) }

