# FizzBuzz

A Ruby class.

To initialize it pass a file with the pairs multiple and string to output.

Each pair separated by a single space and in its own line.

```txt
# ./whatever.txt
3 Fizz
5 Buzz
7 Sivv
```

To check a number pass it to the method 'fizzbuzz'.

The output from this method has been extracted for ease of maintenance.

Included are RSpec tests for basic functionality.

```ruby
fi = FizzBuzz.new('./whatever.txt')
fi.fizzbuzz(21)
=> "FizzBuzzSivv"
```
