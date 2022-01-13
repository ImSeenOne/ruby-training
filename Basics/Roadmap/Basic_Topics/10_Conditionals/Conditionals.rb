puts "Testing \"if/else\" reserved word:"

x = 1
if x > 2
  puts "x is greater than 2"
elsif x <= 2 and x!=0
  puts "x is 1"
else
  puts "I can't guess the number"
end

puts "Testing \"unless\" reserved word:"
unless x>=2
  puts "x is less than 2"
else
  puts "x is greater than 2"
end

puts "Testing \"case/when\" reserved word:"

$age =  5

puts "Age:\n #$age YO is a"
case $age
when 0 .. 2
  puts "baby"
when 3 .. 6
  puts "little child"
when 7 .. 12
  puts "child"
when 13 .. 18
  puts "youth"
else
  puts "adult"
end