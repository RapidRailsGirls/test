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
    (1...threshold).select{|x| x % 3 == 0 or x % 5 == 0}.inject(:+)
  end
end