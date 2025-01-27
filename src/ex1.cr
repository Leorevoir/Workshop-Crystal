# ex1: function basics
# forbidden keywords "for, while, if, ternary operators"
# read carefully the TODO tasks and use Crystal builtin methods !
# there is a `print` function but for this exercice, I recommend using `puts`

NAMES = ["Alice", "Hugo", "Anna", "Bernard"]

#TODO: print the `first` name of the array using NAMES variable
#=> Alice
def print_first_name
    puts NAMES.first
end

#TODO: print 3 `times` the `last` name of the array
#=> Bernard
#=> Bernard
#=> Bernard
def print_three_times
    3.times { |i| puts NAMES.last }
end

#TODO: print `each` array values using NAMES variable
#=> Alice
#=> Hugo
#=> Anna
#=> Bernard
def print_all_names
    NAMES.each { |name| puts name }
end

#TODO: `sort` and print `each with index` array values using NAMES variable
#=> 0. Alice
#=> 1. Anna
#=> 2. Bernard
#=> 3. Hugo
def print_index
    NAMES.sort.each_with_index { |name, index| puts "#{index}. #{name}"}
end

# congratulation ! you just learned how to use loops and methods in Crystal !
