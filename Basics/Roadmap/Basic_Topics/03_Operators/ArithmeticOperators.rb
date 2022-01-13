class Numbers
  def initialize(a, b)
    @a = a
    @b = b
  end

  def getA
    return @a
  end

  def getB
    return @b
  end
end

def arithmeticOperators(num)
  puts "\t +:\t #{num.getA + num.getB}"
  puts "\t -:\t #{num.getA - num.getB}"
  puts "\t *:\t #{num.getA * num.getB}"
  puts "\t /:\t #{num.getA / num.getB}"
  puts "\t %:\t #{num.getA % num.getB}"
  puts "\t**:\t #{num.getA ** num.getB}"
end

puts "First number (integer): "
a = gets.chomp.to_i
puts "Second number (integer): "
b = gets.chomp.to_i
num = Numbers.new(a, b)

arithmeticOperators(num)