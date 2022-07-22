# Software entities ... should be open for extension, but closed for modification

# 01. Open-close Violation

class StudenTaxes
  attr_accessor :name, :semester_taxes, :average_grade

  def initialize(name, semester_taxes, average_grade)
    @name = name
    @semester_taxes = semester_taxes
    @average_grade = average_grade
  end

  def get_discount
    if @average_grade > 5
      @semester_taxes * 0.7
      # elsif @average_grade > 4
      #     @semester_taxes * 0.90
    end
  end
end

student1 = StudenTaxes.new("John Smith", 500, 5.5)
student2 = StudenTaxes.new("Mary Williams", 500, 4.4)
puts student1.get_discount
puts student2.get_discount

# 02. Open-close principle Solution

# class StudenTaxes
#   attr_accessor :name, :semester_taxes, :average_grade

#   def initialize(name, semester_taxes, average_grade)
#     @name = name
#     @semester_taxes = semester_taxes
#     @average_grade = average_grade
#   end

#   def get_discount
#     if @average_grade > 5
#       puts @semester_taxes * 0.7
#     end
#   end
# end

# class AdditionalDiscount < StudenTaxes
#   def get_discount
#     super
#     if 4 < @average_grade && @average_grade <= 5
#       puts @semester_taxes * 0.9
#     end
#   end
# end

# student = StudenTaxes.new("Mary Smith", 500, 5.5)
# student1 = AdditionalDiscount.new("Mary Williams", 500, 6)
# student2 = AdditionalDiscount.new("John Smith", 500, 4.4)
# student3 = AdditionalDiscount.new("John Doe", 500, 3)

# student.get_discount
# student1.get_discount
# student2.get_discount
# student3.get_discount
