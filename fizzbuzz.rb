
def fizzbuzz(*args)
  raise ArgumentError unless args.size==1 and args.first.kind_of?(Fixnum)
  n = args.first

  str = ""
  str << "Fizz" if n%3==0
  str << "Buzz" if n%5==0
  str = "#{n}" if str.empty?

  return str
end
