# ex4: my little rpg - struct and error handling
# forbidden keywords "for, while, if, ternary operators"
# read carefully the TODO tasks and use Crystal builtin methods !

# TODO: declare a `Player` `struct` that contains `name` (String) and `items` (Array(String))
# the default name of each player is "Alice" and at creation, player has no items

# examples:
#  player = Player.new
#  puts player 
#  |-> output: Player(@name="Alice", @items=[])

#  player2 = Player.new "Hugo"
#  puts player2
#  |-> output: Player(@name="Hugo", @items=[])


# TODO: write an `add_item` method that takes an `item` (String) and push it to `@items` array.
# look for `push` or `<<` array methods !

# examples:
#  player = Player.new
#  player.add_item "Sword"
#  puts player
#  |-> output: Player(@name="Alice", @items=["Sword"])


#TODO: for now, a Player can hold everything as an item, let's add list of valid items in our struct:
# VALID = ["Sword", "Bow"]
# and a `is_valid?` method that takes an item (String) and returns a Bool
# now, rewrite your `add_item` method and ensure the item is valid !

# TIP: as `is_valid?` is only called by the struct itself, you can make it `private`
# examples:
#  player = Player.new
#  player.add_item "Sword"
#  player.add_item "Saucisse" #invalid, do nothing
#  puts player
#  |-> output: Player(@name="Alice", @items=["Sword"])

struct Player

    VALID = ["Sword", "Bow"]

    property name : String
    property items : Array(String)

    def initialize(@name : String = "Alice")
        @items = [] of String
    end

    private def is_valid?(item : String) : Bool
        VALID.includes? item
    end

    def add_item(item : String)
        return unless is_valid? item
        @items << item
    end

end
