class FizzBuzz
  attr_reader :settings

  def initialize(filename)
    @settings = {}
    File.open(filename).each_line do |line|
      val, str  = line.strip.chomp.split("\s")
      settings[val.to_i] = str
    end
  end

  def fizzbuzz(n)
    matches = settings.keys.sort.select { |k| n % k == 0 }
    printer(matches, n)
  end

  private

  def printer(matches, n)
    return n if matches.empty?
    matches.map { |k| settings[k] }.join
  end
end
