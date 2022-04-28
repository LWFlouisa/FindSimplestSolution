# x, y, and z equals reaches the same result in different approaches.
# a equals the desired end goal.
# Given same result of X, Y, and Z choose path with simplest solution.
# If solution fails, switch to next solution.
# When successful solution found, write script with that solution.

## All Possible Solutions
x = "puts 'Hello World'"

y = "
def hello
  puts 'Hello World'
end

hello
"

z = "module Greeter
  class Greeting
    def self.greet_user
      puts 'Hello World'
    end
  end
end

Greeter::Greeting.greet_user
"

## Desired Outcome
a = z

## Checks if A is equals to X, Y, or Z
loop do
  if a == x
    puts "Solution is X."; sleep(1.5)

    open("solution.rb", "w") { |f|
      f.puts x
    }

    system("ruby solution.rb")

    abort
  else
    puts "Solution is not X."; sleep(1.5)
  end

  if a == y
    puts "Solution is Y."; sleep(1.5)

    open("solution.rb", "w") { |f|
      f.puts y
    }

    system("ruby solution.rb")

    abort
  else
    puts "Solution is not Y."; sleep(1.5)
  end

  if a == z
    puts "Solution is Z."; sleep(1.5)

    open("solution.rb", "w") { |f|
      f.puts z
    }

    system("ruby solution.rb")

    abort
  else
    puts "Solution is not Z."; sleep(1.5)
  end
end
