# ex3: data structures, OOP initiation
# forbidden keywords "for, while, if, ternary operators"
# read carefully the TODO tasks and use Crystal builtin methods !

#TODO: declare a `struct` named `Vector2f` with two fields: `x` and `y`, both of type Float32.

# examples:
#   vec = Vector2f.new(1.0, 2.0)
#   puts vec
#   |-> output: Vector2f(@x=1.0, @y=2.0)

#TODO: make the `x` and `y` fields accessible from outside the struct:
# look for `property` keyword !
# examples:

#   vec = Vector2f.new(1.0, 2.0)

#   puts vec.x
#   |-> output: 1.0
#   puts vec.y
#   |-> output: 2.0

#TODO: add a '==' method to the `Vector2f struct that takes another `Vector2f` and returns a Bool
# the method returns `true` if both vector are equal and otherwise `false`
# examples:

#   vec = Vector2f.new(1.0, 2.0)
#   vec2 = Vector2f.new(1.0, 2.0)
#   vec3 = Vector2f.new(2.0, 3.0)

#   puts vec == vec2
#   |-> output: true
#   puts vec == vec3
#   |-> output: false

#TODO: add a `*` method to the `Vector2f` struct that multiplies the current vector by another Vector2f
# the method return a `new` Vector2f where x and y is the product of the corresponding component from both vectors

# examples:
#   vec = Vector2f.new(1.0, 2.0)
#   vec2 = Vector2f.new(2.0, 3.0)
#   puts vec * vec2
#   |-> output: Vector2f(@x=2.0, @y=6.0)

#TODO: try to do `puts vec * 2.0` the compiler will scream at you...
# let's create your first overload method:
# add a second method `*` to the Vector2f struct but let it takes a Float32 and returns a `new` Vector2f

# examples:
#   vec = Vector2f.new(1.0, 2.0)
#   puts vec * 2 
#   |-> output: Vector2f[@x=2.0, @y=4.0)]

# congratulation ! you just made your first object with methods in Crystal !

struct Vector2f

    property x, y

    def initialize(@x : Float32, @y : Float32)
    end

    def *(vec : Vector2f) : Vector2f
        Vector2f.new(@x * vec.x, @y * vec.y)
    end

    def *(num : Float32) : Vector2f
        Vector2f.new(@x * num, @y * num)
    end

    def ==(vec : Vector2f) : Bool
        vec.x == @x && vec.y == @y
    end

end

