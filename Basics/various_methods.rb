require 'net/http'
require 'uri'

puts "\n\nTesting for loop and next reserved word:"
for x  in  0..10
  
     if  x < 6 then next
     end
     print (x<10) ? "#{x}, " : " and #{x}"
end

puts "\n\nTesting Array.join()"

a = [18, 22, 33, 9, 5, 6]

b = [1, 4, 1, 1, 88, 9]

c = [18, 22, 33, 88, 50, 6]
 
puts "\tSepparated by pluses : #{a.join("+")}\n\n"
 
puts "\tSeparated by minuses : #{b.join('-')}\n\n"
 
puts "\tSeparated by asterisks : #{c.join("*")}\n\n"

puts "Testing \"include?\" reserved word:"
print "\t"
puts "Ruby".include? "by" 

res = Net::HTTP.get(URI "https://www.google.com/")
puts res.body #if res.is_a?(Net::HTTPSuccess)