# ex2: types and functions
# forbidden keywords "for, while, if, ternary operators"
# read carefully the TODO tasks and use Crystal builtin methods !

# TODO: simple add function
#=> puts (add 1, 2) # output: 3
def add(a : Int32, b : Int32) : Int32
    a + b
end

# TODO: convert °C to °F
# formula is (°C × 9/5) + 32 = °F
#=> puts (celsius_to_fahrenheit 0) -> 32.0
def celsius_to_fahrenheit(celsius : Float32) : Float32
    celsius * 9 / 5 + 32
end

# TODO: safe floor division function
# look for `unless` keyword !
#=> puts (div 10, 2) # output: 5
#=> puts (div 10, 0) # output: 0
def div(a : Int32, b : Int32) : Int32
    return a // b unless b == 0
    0
end

# TODO: check if a `String` is a palindrome
#=> puts (palindrome? "salut") # output: false
#=> puts (palindrome? "radar") # output: true
def palindrome?(str : String) : Bool
    str == str.reverse
end

# congratulation ! you just learned basic types in Crystal !
