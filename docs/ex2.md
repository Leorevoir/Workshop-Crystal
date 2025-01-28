<h1 align="center">
  ex2 - Types and Functions<br>
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px"/>
  <br>
</h1>

## Task

File: [**ex2**](./../src/ex2.cr)

> [!WARNING]
> Try to avoid using `if` `else` `for` `while` keywords

### Task 0

Write a function that adds two integers and returns the result.<br>
In Crystal, syntax for function is:
```ruby 
def add(a : Int32, b : Int32) : Int32
    # content
end
```
output example:
```ruby
puts add(1, 2)
#=> 3
```
### Task 1

Write a function to convert °C to °F. The function takes a `Float32` and returns a function `Float32`.
<br>
> [!TIP]
> The formula is (°C × 9/5) + 32 = °F

```ruby
puts celsius_to_fahrenheit(0)
#=> 32.0
```

### Task 2

Write a `div` function that takes two `Int32` and returns an `Int32`. The function must be a `floor division` (`//`)
<br>
If the division is not possible (ex: division by 0) the function returns 0.
```ruby
puts div(10, 2)
#=> 5
puts div(10, 0)
#=> 0
```

> [!TIP]
> as `if` `else` are ugly try to use `unless` keyword instead !

### Task 3

Write a `palindrome?` function to check if a string is a `palindrome`.<br>
The function takes a `String` in argument and returns a `Bool`.

```ruby
puts palindrome?("salut")
#=> false
puts palindrome?("radar")
#=> true
```
