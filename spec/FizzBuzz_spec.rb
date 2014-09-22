require 'rspec'
require './lib/fizzbuzz'

RSpec.describe 'FizzBuzz Method' do
  let(:f) { FizzBuzz.new('./spec/whatever.txt') }

  it 'outputs Buzz when multiple of number' do
    expect(f.fizzbuzz(15)).to eq('FizzBuzz')
    expect(f.fizzbuzz(10)).to eq('Buzz')
    expect(f.fizzbuzz(-7)).to eq("Sivv")
    expect(f.fizzbuzz(3*5*7)).to eq('FizzBuzzSivv')
  end

  it 'outputs FizzBuzz for 0 too' do
    expect(f.fizzbuzz(0)).to eq('FizzBuzzSivv')
    expect(f.fizzbuzz(0)).not_to eq('Fizz')
    expect(f.fizzbuzz(0)).not_to eq('Buzz')
    expect(f.fizzbuzz(0)).not_to eq('0')
  end

  it 'outputs the number in any other case' do
    expect(f.fizzbuzz(2)).to eq(2)
    expect(f.fizzbuzz(12_234_871)).to eq(12234871)
    expect(f.fizzbuzz(13)).to eq(13)
    expect(f.fizzbuzz(13)).not_to eq('Fizz')
    expect(f.fizzbuzz(13)).not_to eq('Buzz')
    expect(f.fizzbuzz(13)).not_to eq('FizzBuzz')
  end
end
