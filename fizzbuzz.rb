
def fizzbuzz(n)
  raise ArgumentError unless n.kind_of?(Fixnum)
  str = ""
  str << "Fizz" if n % 3 == 0
  str << "Buzz" if n % 5 == 0
  str = "#{n}" if str.empty?
  str
end
