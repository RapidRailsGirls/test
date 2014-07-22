class Euler
attr_accessor :number_of_legs

  def initialize(legs)
   @number_of_legs = legs
  end

  def missing_legs
    4 - @number_of_legs
  end

  def self.sumUp(array)
    return 0 if array.nil?
    array.inject(:+)
  end

  def self.sum_multiples_below(threshold)
    sum = 0
    (1...threshold).each do |number|
     sum += number if is_multiple_of_3_or_5?(number)
    end
    sum
  end

  private

  def self.is_multiple_of_3_or_5?(number)
    number % 3 == 0 or number % 5 == 0
  end
end