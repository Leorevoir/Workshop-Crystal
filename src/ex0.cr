# ex0: syntax basics
# read carefully the TODO tasks and use Crystal builtin methods !
# there is a `print` function but for this exercice, I recommend using `puts`

#TODO: print "Hello, World" using `puts` function
puts "Hello, World!"

# TODO: we can do better, try to concat these two string and print it
hello = "Hello, "
world = "World!"
puts "Hello, " + "World!"


#TODO: print "zebi" if `age` is above `18`.
# easy ? Try to do it without `if` `else` keywords !
# hint: look for `unless` keyword!
age = 17

puts "zebi" unless age < 18

#TODO: increment and print `count` until `count` >= 10. If `count` is divisble by 3, skip it.
# easy ? Try to do it without `while` or `for` keywords !
# hint: look for `until` keyword !
count = 0

until count >= 10
    count += 1
    next if count % 3 == 0
    puts count
end

