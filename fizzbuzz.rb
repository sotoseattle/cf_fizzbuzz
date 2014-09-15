def fizzbuzz(*args)
  raise ArgumentError unless args.size==1 and args.first.kind_of?(Fixnum)
  n = args.first

  if n%15==0
    "FizzBuzz"
  elsif n%3==0
    "Fizz"
  elsif n%5==0
    "Buzz"
  else
    n.to_s
  end
end

