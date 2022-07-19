# Depend upon abstractions, not concretions

# Design principle shouldn't depend on low-level implementation but on high level abstraction
# Making our code independent og things that a fragile or out of our control 
# Parent class don't know nothing about child class



# Dependency injection - design pattern allow us to separete creation from use

# dependency injection violation

class Book
    attr_accessor :title, :author, :pages

    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end

    def info
        "\"#{@title}\" with author #{@author} has #{@pages} pages."
    end

end


class Printer

    def formatter      
      book = Book.new("The Green Mile", "Stephen King", 400)
      result = ""
      result += "---------------" + "\n"
      result += book.title + "\n"
      result += "---------------" + "\n"      
      result += "By " + book.author + "\n"
      result += "---------------"
      return result      
    end
  end



book_for_printing = Printer.new
puts book_for_printing.formatter



# dependency inversion Solution

# class Book
#     attr_accessor :title, :author, :pages

#     def initialize(title, author, pages)
#         @title = title
#         @author = author
#         @pages = pages
#     end

#     def info
#         "\"#{@title}\" with author #{@author} has #{@pages} pages."
#     end

# end


# class Printer
#     def initialize(book)
#         @book = book
#     end

#     def formatter    
      
#       result = ""
#       result += "------------------------------" + "\n"
#       result += @book.title + "\n"
#       result += "------------------------------" + "\n"      
#       result += "By " + @book.author + "\n"
#       result += "------------------------------"
#       return result      
#     end
#   end



# book = Book.new("For Whom the Bell Tolls", "Ernest Hemingway", 480)
# book2 = Book.new("The Green Mile", "Stephen King", 400)

# book_for_printing = Printer.new(book)

# puts book_for_printing.formatter

# book_for_printing2 = Printer.new(book2)
# puts book_for_printing2.formatter
