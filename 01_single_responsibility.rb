# The SOLID Principles are five principles of Object-Oriented class design. 
# They are a set of rules to create understandable, readable, and testable code that many developers can work on.

# There should never be more than one reason for a class to change. In other words, every class should have only one responsibility.

# 01. Single responsibility Violation

class Book
    attr_accessor :title, :author, :location, :pages

    def initialize(title, author, location, pages)
        @title = title
        @author = author
        @location = location
        @pages = pages
    end

    def info
       puts "\"#{@title}\" with author #{@author} has #{@pages} pages and is located at [#{@location}]."
    end

    def print_book
        formatter = ""
        formatter += "---------------\n" 
        formatter += @title + "\n"
        formatter += "---------------\n"    
        formatter += "By " + @author + "\n"
        formatter += "---------------\n"
        formatter += "..."
        return formatter     
    end 

end


book = Book.new("The Green Mile", "Stephen King", "005.117-K73r-1996", 400)
puts book.info
puts book.print_book

# # 02. Single responsibility Solution

# class Book
#     attr_accessor :title, :author, :pages

#     def initialize(title, author, pages)
#         @title = title
#         @author = author
#         @pages = pages
#     end

#     def info
#         puts "\"#{@title}\" with author #{@author} has #{@pages} pages."
#     end
# end

# class Library
#     attr_accessor :books
#     attr_accessor :locations

#     def initialize       
#         @books = []
#         @locations = {}
#     end
    
#     def add_book(book, location)
#         @books.push(book)
#         # book.title = "None"
#         @locations[book.title] = location
#     end

#     def find_book(book_title)
#       @books.each do |x|        
#           if x.title == book_title 
#               current_location = @locations[book_title]                           
#               return "\"#{x.title}\" with author #{x.author} found at #{current_location}"  
#           end                     
#       end      
#       puts "\"#{book_title}\" is not in the Library"         
#     end
# end

# class Printer
#         def print_book(book)
#         formatter = ""
#         formatter += "-----------------------\n" 
#         formatter += book.title + "\n"
#         formatter += "-----------------------\n"  
#         formatter += "By " + book.author + "\n"
#         formatter += "----------------------- \n"
#         formatter += "..."

#         return formatter     
#     end 
# end



# book = Book.new("The Green Mile", "Stephen King", 400)
# puts book.info
# second_book = Book.new("For Whom the Bell Tolls", "Ernest Hemingway", 480)
# puts second_book.info

# library = Library.new
# library.add_book(book, "[005.117-K73r-1996]")
# library.add_book(second_book, "[005.118-K99r-1939]")
# puts library.find_book("The Green Mile")
# puts library.find_book("For Whom the Bell Tolls")
# puts library.find_book("Clean Code") # By Robert Martin introduced SOLID for first time in 2000

# printer = Printer.new
# puts printer.print_book(second_book)

