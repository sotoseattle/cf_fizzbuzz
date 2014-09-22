require "rspec"
require "./lib/fizzbuzz"

RSpec.describe "FizzBuzz Method" do

  it "takes one number as argument" do
    expect { fizzbuzz(42, 32) }.to raise_error
    expect { fizzbuzz("hola") }.to raise_error
    expect { fizzbuzz }.to raise_error
    expect { fizzbuzz(42) }.not_to raise_error
  end

  it "outputs Fizz when multiple of 3" do
    expect(fizzbuzz(9)).to eq("Fizz")
    expect(fizzbuzz(9)).not_to eq("Buzz")
    expect(fizzbuzz(9)).not_to eq("FizzBuzz")
    expect(fizzbuzz(9)).not_to eq("9")
  end

  it "outputs Buzz when multiple of 5" do
    expect(fizzbuzz(10)).to eq("Buzz")
    expect(fizzbuzz(10)).not_to eq("Fizz")
    expect(fizzbuzz(10)).not_to eq("FizzBuzz")
    expect(fizzbuzz(10)).not_to eq("10")
  end

  it "outputs FizzBuzz when multiple of 3 and 5" do
    expect(fizzbuzz(30)).to eq("FizzBuzz")
    expect(fizzbuzz(30)).not_to eq("Fizz")
    expect(fizzbuzz(30)).not_to eq("Buzz")
    expect(fizzbuzz(30)).not_to eq("30")
  end

  it "outputs FizzBuzz for 0 too" do
    expect(fizzbuzz(0)).to eq("FizzBuzz")
    expect(fizzbuzz(0)).not_to eq("Fizz")
    expect(fizzbuzz(0)).not_to eq("Buzz")
    expect(fizzbuzz(0)).not_to eq("0")
  end

  it "outputs the number in any other case" do
    expect(fizzbuzz(2)).to eq("2")
    expect(fizzbuzz(12234871)).to eq("12234871")
    expect(fizzbuzz(-7)).to eq("-7")
    expect(fizzbuzz(13)).to eq("13")
    expect(fizzbuzz(13)).not_to eq("Fizz")
    expect(fizzbuzz(13)).not_to eq("Buzz")
    expect(fizzbuzz(13)).not_to eq("FizzBuzz")
  end
end
