
puts "Testing \".downto()\" method:"
print "\t"
10.downto(1) { |n| print n, "... " }
puts "\tHappy new year!"

puts "Testing \".times()\" method:"
print "\t"
5.times {|i| print i, ", " }

puts "\nTesting \".collect\" method:"
print "\t"
(0...20).collect { |n| print "#{n * 2}, " }

puts "\nTesting \".upto()\" method:"
print "\t"
1.upto(10) { |n| print n, "... " }
puts "\n\tReady or not, here I go!"


puts "\nTesting \"Range.step(n)\" method:"
range = 1..20
puts "\tPrint each 2 steps"
print "\t"
range.step(2) {|x| print "#{ x }, "}
puts "\n\tPrint each 3 steps"
print "\t"
range.step(3) {|x| print "#{ x }, "}

puts "\nTesting \"next\" reserved word:"
range = 1..100
puts "\tPrint each 2 steps then apply next; if value is multiple of 5"
print "\t"
range.step(2) do |x|
  if x % 5 != 0
    print "#{ x }, "
  else
    next
  end
end

puts "\nTesting \"break\" reserved word:"
range = 1..100
puts "\tPrint each 2 steps then apply break; if value is greater than 50"
print "\t"
range.step(2) do |x|
  if x < 50
    print "#{ x }, "
  else
    next
  end
end

puts "\nTesting \"redo\" reserved word:"
count = 0;
for i in 0..20
  puts "\tValue of local variable is #{i}"
  if count >= 10 then
    break
  end
  if i >= 10 then
    count += 1
    redo
  end
end

puts "Testing \"begin\" and \"redo\" reserved words:"
count = 0

begin
  x = rand(10)
  if x != 5
    raise StandardError.new "Couldn't generate a random number equals to: \"5\". Retrying..."
  else
    puts "\tSuccesfully generated a random number equals to \"5\" with #{count} tries"
  end
rescue
  puts "\tCouldn't generate a random number equals to: \"5\". Retrying..."
  count += 1
  retry if x != 5
end