# Quickest Julia tutorial ever
# Alex Pinch, Jan. 23 2023

# ! -- Caution -- !
# Don't run this, treat this like a reference note for some Julia syntax.

# Define a variable
hello = "Hello world!"
println(hello)

# Variables can be emojis (any UTF-8 character) in Julia
👋 = "Hello world!"
println(👋)

# Good at string parsing like Perl
circ = 10 * 2 * 3.14
str = "The circumference is $circ"
occursin(r"^\s*(?:#|$)", str)

# Supports 'one-liners'
(x = 1; y = 2; x + y)

# Functions
# Long way to define a function
function example(a,b)
	a + b
end
callme(example)
# Short way to define a function
example(a,b) = a + b
callme(example)
# Functions of the same name can be assigned different data types
# Julia will know which function to call based on the data type given when called
example_two(x) = print("You passed this function anything")
example_two(x::Float64) = print("You passed this function a float")
example_two(x::Int) = print("You passed this function an integer")
example_two(23)
# Can also pass a function multiple parameters to perform checks
# Use keywords like where to perform logic on the given parameters
example_three(x::T, y::T) where {T} = print("Types match!")

# Arrays/Tables
array = [1, 2, 3, 4]
matrix = zeros(Int8, 3, 3)
# Creates this 3x3 Matrix:
# 0 0 0
# 0 0 0
# 0 0 0

# Asynchronous computing???
t = @task begin; sleep(5); println("Done")
# Can pause and synchronize the execution of code

# Can distribute data to multiple memory spaces
r = remotecall(rand, 2, 2, 2)
s = @spawnat 2 1 .+ fetch(r) # '@' before something in Julia calls a native macro
fetch(s)
x = @async 1+2
# Will return a 'remoteref', a ticket to identify the process (a container value)
fetch(x)
r = RemoteRef() # Will artificially create a ticket without a process
@async (fetch(r);println("hi")) # Will not return anything, defines the process that will occur when a value gets put in this ticket
put(r,0) # Places a value on the ticket
take(r) # Removes the value from the ticket
# For more distributed/parallelized computing: https://www.youtube.com/watch?v=JoRn4ryMclc&t=2s&ab_channel=TheJuliaProgrammingLanguage
