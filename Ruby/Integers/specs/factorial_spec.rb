require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/factorial'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'factorial methods' do
  describe 'factorial iterative' do
    it 'evaluates correctly factorial decimal value' do
      find_factorial_value(0).must_equal 1
      find_factorial_value(1).must_equal 1
      find_factorial_value(4).must_equal 24
    end
    it 'returns nil for invalid value' do
      find_factorial_value(nil).must_be_nil
    end
    it 'returns nil for negative integer' do
      find_factorial_value(-4).must_be_nil
    end
  end
  describe 'factorial recursive' do
    it 'evaluates correctly factorial decimal value' do
      find_factorial_value_recursive(0).must_equal 1
      find_factorial_value_recursive(1).must_equal 1
      find_factorial_value_recursive(4).must_equal 24
    end
    it 'returns nil for invalid value' do
      find_factorial_value_recursive(nil).must_be_nil
    end
    it 'returns nil for negative integer' do
      find_factorial_value_recursive(-4).must_be_nil
    end
  end
end
