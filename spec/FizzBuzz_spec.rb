require 'rspec'
require './fizzbuzz'


RSpec.describe "FizzBuzz Method" do

  it "takes one number as argument" do
    expect{fizzbuzz(42,32)}.to raise_error
    expect{fizzbuzz("hola")}.to raise_error
    expect{fizzbuzz()}.to raise_error
    expect{fizzbuzz(42)}.not_to raise_error
  end

  it "outputs Fizz when multiple of 3" do
    expect(fizzbuzz(9)).to eq("Fizz")
  end
  it "outputs Buzz when multiple of 3" do
    expect(fizzbuzz(10)).to eq("Buzz")
  end
  it "outputs FizzBuzz when multiple of 3 and 5" do
    expect(fizzbuzz(30)).to eq("FizzBuzz")
  end
  it "outputs FizzBuzz for 0 too" do
    expect(fizzbuzz(0)).to eq("FizzBuzz")
  end
  it "outputs the number in any other case" do
    expect(fizzbuzz(2)).to eq("2")
    expect(fizzbuzz(12234871)).to eq("12234871")
    expect(fizzbuzz(-7)).to eq("-7")
    expect(fizzbuzz(13)).to eq("13")
  end

end

