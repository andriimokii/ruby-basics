# this is a comment, hello

=begin
this is a multi-line comment
it consists of 2 lines
=end

# In ruby almost everything is an Object
puts 3.class # => Integer
puts "hello".class # => String
puts "hello".method(:class).class # => Method

# Basic arithmetic
puts 1 + 1 # => 2
puts 8 - 1 # => 7
puts 10 * 2 # => 20
puts 35 / 5 # => 7
puts 2 ** 3 # => 8
puts 5 % 3 # => 2

# Bitwise operators
puts 3 & 5 # => 1 (AND)
puts 3 | 5 # => 7 (OR)
puts 3 ^ 5 # => 6  (XOR)

# Arithmetic is syntactic sugar
# for calling a method on an object
puts 1.+3 # => 4
puts 10.5*5 # => 50

# Special values are also objects
puts nil.class # NilClass, 'null' in other languages
puts true.class # TrueClass class
puts false.class  # FalseClass class

# Equality
puts 1==1 # True
puts 2==1 # False

# Inequality
puts 1!=1 # False
puts 2!=1 # True

# Apart from False nil also a 'falsey' value
puts !!nil # False
puts !!false # False
puts !!0 # False

# More comparison
puts 1 < 10 # true
puts 1 > 10 # false
puts 2 <= 2 # true
puts 2 >= 2 # true

# Combined comparison operator
# returns 1 when first argument greater, -1 when second argument is greater, 0 - otherwise
puts 1 <=> 10 # -1
puts 10 <=> 1 # 1
puts 1 <=> 1 # 0

# Logical operators
puts true && false # false
puts true || false # true

# There are alternate versions of logical operators. They work this way:
true and puts "Run only if first statement is true" # Run only if first statement is true
false or puts "Run only if first statement is false" # Run only if first statement is false

# String interpolation
placeholder = 'use string interpolation'
puts "I can #{placeholder}" # I can use string interpolation

# You can combine strings using '+' only with string, not with other types
puts 'hello ' + 'world' # hello world
puts 'hello ' + 1.to_s # hello 1
num = 2
puts "I can #{num}" # I can 2

# ... or combine string with operators
puts 'hello ' * 3 # hello hello hello

# ... or append to string
puts 'hello' << ' append string' # hello append string

# print with newline at end
puts 'Newline' # Newline\n

# ... no newline
print 'No newline' # No newline
puts ' ; other text' # ; other text\n

# variables
x = y = 10
puts "#{x} + #{y} = " + (x+y).to_s # 10 + 10 = 20

# use snake_case
my_var_name = true

# Symbols - immutable constants, internally represented as Integer nubmers.
# Often used instead of strings and have specific, meaningful values. Example of symbol:
puts :pending.class # => Symbol
puts :pending == 'string' # => False

# Strings could be converted to Symbols, and vice versa
puts :pending.to_s.class.to_s + ' ' + 'string'.to_sym.class.to_s # String Symbol

# Arrays
array = [1, "string", true]
print array # [1, "string", true]

# %w to quote values inside array
array = %w[one two three]
print array # ["one", "two", "three"]
puts

# Arrays could be indexed
puts array[0] + ' ' + array.first # => one one
puts array[12].class # NilClass, if no such index in Array
puts array[-1] + ' ' + array.last # three three
print array[0,2] # one two
print array[0..1] # one two

# You can reverse an array
print [1,2,3].reverse # [3, 2, 1]
puts

# ... or even update value of array in place. With '!'
a = [1,2,3]
a.reverse!
print a # [3, 2, 1]
puts a.[] 0 # array is object, [] is method. Output: 3

# you can add to an arrey
print a << 4 # => [3,2,1,4]

# ... or like this
print a.push(5) # => [3,2,1,4,5]

# to check if item exists in array
puts a.include?(2) # => true

# Hashes - key/values pairs
hash = {'color' => 'green', 'number' => 1}
puts hash.keys # => color number
puts hash['color'] # => green
puts hash['test'].class # => NilClass, if no such key

# we can use symbols in Hash
hash = {:defcon => 3, :active => true}
print hash.keys # [:defcong, :active]

# ... or you can use alternate syntax
hash = {defcon: 2, active: false}

# check existance of key or value in hash
puts hash.key?(:defcon) # True
puts hash.value?(false) # True

# Conditionals
if true
  'if statement'
elsif false
  'elsif statement'
else
  'else statement'
end

# you can use postfix if statement
warning = 'Achtung!!!'
puts("some warning " + warning) if !warning.empty? # some warning Achtung!!!
puts("some warning " + warning) unless warning.empty? # some warning Achtung!!!

# Loops
(1..5).each do |counter|
  puts "iteration #{counter}" # iteration 1 ... iteration 5
end

# ... or for, but is NOT used in Ruby
for counter in 1..5
  puts "hello ##{counter}" # hello #1 ... hello #5
end

# you can also use blocks in curly braces
(1..5).each { |counter| puts "world ##{counter}" } # world #1 ... world #5

# we can also iterate arrays and hashes
array = [1, 2, 3]
array.each_with_index do |value, index|
  puts "arrays index is #{index}, value is #{value}" # arrays index is 0, value is 1 ... arrays index is 2, value is 3
end

hash = {'book_1' => 'Harry Potter', 'boot_2' => 'Green Elephant'}
hash.each do |key,value|
  puts "Key is #{key}, value is #{value}" # Key is book_1, value is Harry Potter ... Key is boot_2, value is Green Elephant
end

hash.each { |key,value| puts "Key is #{key}, value is #{value}" } # Key is book_1, value is Harry Potter ... Key is boot_2, value is Green Elephant

# While loop
counter = 1
while counter <= 5 do
  puts "counter value is #{counter}" # counter value is 1 ... counter value is 5
  counter += 1
end

# Map - do something to each element in array
array = [1, 2, 3, 4, 5]
doubled_array = array.map { |i| i * 2 }
puts doubled_array # 2, 4, 6, 8, 10

# also we can use it like this
array = %w[foo bar]
puts array.map(&:upcase) # FOO BAR

# Case construct
grade = 20
case grade
when 0..20
  puts 'less than 20' # less than 20
when 20..40
  puts 'less than 40'
else
  puts 'Else condition'
end

# Exception handling
begin
  # Code here that might raise an exception
  raise NoMemoryError, 'You are out of memory.'
rescue NoMemoryError => e
  puts 'There was NoMemoryError exception', e # There was NoMemoryError exception, You are out of memory
rescue RuntimeError => e
  puts 'There was RuntimeError exception', e
else
  puts 'Some other error'
ensure
  puts 'Goodbye!!!' # Goodbye!!!
end

# Methods
# Methods (and blocks) implicitly return the value of the last statement
def double(var)
  var * 2
end
puts double(2) # 4

# parentheses are optional
puts double double 2

# Method arguments are separated by a comma
def sum(x, y)
  x + y
end
puts sum 3, 4 # => 7

# Yield parameter
# Every method has an implicit, optional parameter yield
def surround
  puts '{'
  yield
  puts '}'
end
surround { puts 'hello world!!' } # { hello world!!! }

# Block can be converted to 'proc' object, which wraps the block, and it could be called from another method
def guests(&block)
  puts block.class
  puts block.call(4)
end
guests { |n| "you have #{n} guests." }

# Using splat '*' operator - it will convert list of arguments to an array
def guests(*array)
  array.each { |element| puts "This is #{element}" }
end
guests("Stepan", "Petro")

# Map, reduce
puts ["Stepan", "Petro"].map(&:upcase) # => STEPAN, PETRO
puts [1,2,3].reduce(&:+) # => 6

# Destructuring of arrays
a, b, c = [1, 2, 3]
puts b # 2

# Splat operator - to destructure an array into a list
def best(first, second, third)
  puts "Winners are #{first}, #{second}, #{third}" # Winner are A, B, C
end
array = ["A", "B", "C", "D", "E"]
best *array.first(3)

# ... you can also use splat operator in parameters
def best(first, second, third, *others)
  puts "Winners are #{first}, #{second}, #{third}." # Winners are A, B, C
  puts "Number of other participants - #{others.count}" # Number of other participants  - 3
end
best *array

# all methods that return boolean end with question mark (?)
puts 5.even? # False
puts 5.odd? # True

# if methods end with exclamation mark (!), it changes the value - does some destructive
company_name = "mcdonalds"
puts company_name.upcase # MCDONALDS
puts company_name # mcdonals
company_name.upcase!
puts company_name # MCDONALDS

# Classes
class Human
  # class variable - shared with all instances of this class
  @@species = 'H. sapiens'

  # Basic initializer
  def initialize(name, age = 0)
    # assign argument value to instance variable
    @name = name
    @age = age
  end

  # Basic setter method
  def name=(name)
    @name = name
  end

  # Basic getter method
  def name
    @name
  end

  # ... getter and setter could be incapsulated using attr_accessor method
  attr_accessor :name

  # getter/setter methods could be also created individually
  attr_reader :name
  attr_writer :name

  # class method uses self; it can only be called on the class, not an instance
  def self.say(msg)
    msg
  end

  # getter for class variable
  def species
    @@species
  end
end

# Class initialization
obj = Human.new("Petro", 30)
puts obj.species + ' ' + obj.name + ' ' + Human.say("Hello world!") # H. sapiens Petro Hello world!
obj.name = 'Petro the First'
puts obj.name # Petro the First

# Variables scope is defined how we name them
# vars with $ have Global scope
$var = 'this is global var'
puts defined? $var # global-variable

# vars with @ have Instance scope
@var = 'this is instance var'
puts defined? @var # instance-variable

# vars with @@ have Class scope
# @@var_class = 'this is class var'

# Variables that start with Capital letter = constants
Var = 'Hello world'
puts defined? Var # constant

# Class variable shared in its Class and descendants
# Base Class
class Humanoid
  @@foo = 0

  def self.foo
    @@foo
  end

  def self.foo=(value)
    @@foo = value
  end
end

# Derived class
class Worker < Humanoid
end

puts Humanoid.foo # 0
puts Worker.foo # 0
Humanoid.foo = 10
puts Worker.foo # 10

# Instance variable is not shared in Class and its descendants
class Humann
  @foo = 1
  def self.foo
    @foo
  end

  def self.foo=(value)
    @foo = value
  end
end

class Doctor < Humann
end

puts Doctor.foo.class
puts Humann.foo

# Modules
# Including modules binds their methods to the class instances
# Extending modules binds their methods to the class itself
module ModuleExample
  def foo
    'foo'
  end
end

class Person
  include ModuleExample
end

class Book
  extend ModuleExample
end

p = Person.new
puts p.foo # foo
puts Book.foo # foo

# Callbacks are executed when including and extending a module
module ConcertExample
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module ClassMethods
    def bar
      'bar'
    end
  end

  module InstanceMethods
    def qux
      'qux'
    end
  end
end

class Something
  include ConcertExample
end

puts Something.bar # bar
puts Something.new.qux # qux

# END
# you can call block with argument
def multiply
  yield 1
  yield 2
end

multiply { |i| puts i * 10 }

# Lambda
say_something = -> { puts 'I am saying something' }
say_something.call

# lambda with arguments
doubled = ->(i) { puts i * 2 }
doubled.call(2)

# Proc
# BTW: there is no dedicated Lambda class, lambda is a special Proc object
proc = Proc.new { |i| puts i }
proc.call(999)
