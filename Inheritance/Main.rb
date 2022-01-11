
class Parent

    def initialize(name, lastName, someText, age)
        puts "Parent received: #{someText}"
        @name = name
        @lastName = lastName
        @age = age
    end

    def getName
        return @name
    end

    def setName(name)
        @name = name
    end

    def getLastname
        return @lastName
    end

    def setLastname(lastName)
        @lastName = lastName
    end

end


class Children < Parent

    def initialize(name, lastName, someText, age, books)
        super(name, lastName, someText, age)
        @books = books
    end

    def default_method
        puts "You called the children method"
    end

    def getBooks
        return @books
    end

    def setBooks(books)
        @books = books
    end

end

class Book

    def initialize(name, author, year)
        @name = name
        @author = author
        @year = year
    end

    def getName
        return @name
    end

    def setName(name)
        @name = name
    end

    def getAuthor
        return @author
    end

    def setAuthor(author)
        @author = author
    end

    def getYear
        return @year
    end

    def setYear(year)
        @year = year
    end

    def toString
        return "Name: #{@name} | Author: #{@author} | Year: #{@year}"
    end
end


puts "Insert name: "
name = gets.chomp

puts "Insert lastname: "
lastName = gets.chomp

puts "Insert age: "
age = gets.chomp.to_i

books = { "Top selling book" => Book.new("IT", "Stephen King", "1986"), "Book most bought by children" => Book.new("Garfield", "Jim Davis", "1986"), "Our favourite" => Book.new("The alchemist", "Paulo Coelho", "2018") }
childrenObj = Children.new(name, lastName, "Texto texto", age, books)
childrenObj.default_method

puts "Loaded default books..."
puts "\nChildren's name is: #{childrenObj.getName}"
puts "\nAvailiable books for #{childrenObj.getName} are:\n"
childrenObj.getBooks.each do |key, value|
    print key, " is ", value.toString, "\n"
end
