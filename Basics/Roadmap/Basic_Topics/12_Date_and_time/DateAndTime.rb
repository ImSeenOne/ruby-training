time = Time.new

puts "Current Time : " + time.inspect
puts "Year: #{time.year}"    # => Year of the date
puts "month: #{time.month}"   # => Month of the date (1 to 12)
puts "day: #{time.day}"     # => Day of the date (1 to 31 )
puts "weekday: #{time.wday}"    # => 0: Day of week: 0 is Sunday
puts "yearday: #{time.yday}"    # => 365: Day of year
puts "hour: #{time.hour}"    # => 23: 24-hour clock
puts "min: #{time.min}"     # => 59
puts "sec: #{time.sec}"     # => 59
puts "usec: #{time.usec}"    # => 999999: microseconds
puts "zone: #{time.zone}"    # => "UTC": timezone name