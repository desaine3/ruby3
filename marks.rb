# load in the csv library
require 'csv'

#
#  Returns the grade for a given mark
#
def grade(mark)
    case mark
    when 80..100
        grade = 'a'
    when 60..79
        grade = 'b'
    when 40..60
        grade = 'c'
    else
        grade = 'f' 
    end
    return grade
end


#
#  Returns the summary output for a given name, mark and grade 
#
def summary(name, mark, grade)
    return "#{name} got #{mark}% and was awarded a grade #{grade}"
end

#
#  Reads all the marks in from the csv file and displays the summary output
#
def display_marks
    # load in the marks
    marks = CSV.read('marks.csv', :headers => true).to_a

    # TODO: fix the mistakes in the code below this point
   
    marks[1..-1].each do |line|
        student_total = 0
        name = line.first
        line[1..-1].each {|g| student_total += g.to_i }
       puts  summary(name, student_total, grade(student_total))
    end
    return nil
end


# Extension work:
# --------------


# Like display_marks, except the students are printed in
# order of total mark (highest first)
def display_sorted
     # load in the marks
     marks = CSV.read('marks.csv', :headers => true).to_a

    names_with_totals = marks[1..-1].map do |line|
        student_total = 0
        name = line.first
        line[1..-1].each {|g| student_total += g.to_i }
        [name, student_total]
    end

    # note how a and b are back to front to sort larges first
    names_with_totals.sort {|a,b| b[1] <=> a[1]}.each do |name, total|
        # note how because we're iterating over an array of
        # two element arrays, we can just pass the two elements
        # as named arguments to the block
        puts summary(name, total, grade(total))
    end

    return nil
end

# Like display_mards, except the students are only printed if
# they pass (got above an f)
def display_selected
     # load in the marks
    marks = CSV.read('marks.csv', :headers => true).to_a

    # TODO: fix the mistakes in the code below this point
   
    marks[1..-1].each do |line|
        student_total = 0
        name = line.first
        line[1..-1].each {|g| student_total += g.to_i }
            if grade(student_total)  != 'f'
                puts  summary(name, student_total, grade(student_total))
            end
        end
    return nil
end
