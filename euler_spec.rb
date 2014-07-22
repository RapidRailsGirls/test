require 'rspec'
require_relative 'euler'

describe 'Testing' do
  it 'should add numbers' do
    array = [4, 5, 12, 3]
    result = Euler.sumUp(array)
    expect(result).to eq 24
  end

  it 'should return 0 when nil' do
    array = nil
    result = Euler.sumUp(array)
    expect(result).to eq 0
  end

  it 'should construct eulers' do
    euler = Euler.new(3)
    expect(euler.number_of_legs).to eq 3
    expect(euler.missing_legs).to eq 1
  end

end

describe 'Euler Problem' do
 it 'should show sum of the multiples of 3 and 5 below parameter' do
  result = Euler.sum_multiples_below(16)
  expect(result).to eq 5 + 10 + 15 + 3 + 6 + 9 + 12
 end
end