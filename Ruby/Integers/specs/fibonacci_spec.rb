require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/fibonacci'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'fibonacci methods' do
  describe 'fibonacci iterative' do
    it 'returns 0 for the 1st(n = 0) fibonacci' do
      find_nth_fibonacci(0).must_equal 0
    end
    it 'returns 1 for the 2nd(n = 1) fibonacci' do
      find_nth_fibonacci(1).must_equal 1
    end
    it 'returns 1 for the 3rd(n = 2) fibonacci' do
      find_nth_fibonacci(2).must_equal 1
    end
    it 'returns 8 for the 7th(n = 6) fibonacci' do
      find_nth_fibonacci(6).must_equal 8
    end
    it 'returns nil for invalid input' do
      find_nth_fibonacci(nil).must_be_nil
    end
  end
  describe 'fibonacci recursive' do
    it 'returns 0 for the 1st(n = 0) fibonacci' do
      find_nth_fibonacci_recursive(0).must_equal 0
    end
    it 'returns 1 for the 2nd(n = 1) fibonacci' do
      find_nth_fibonacci_recursive(1).must_equal 1
    end
    it 'returns 1 for the 3rd(n = 2) fibonacci' do
      find_nth_fibonacci_recursive(1).must_equal 1
    end
    it 'returns 8 for the 7th(n = 6) fibonacci' do
      find_nth_fibonacci_recursive(6).must_equal 8
    end
    it 'returns nil for invalid input' do
      find_nth_fibonacci_recursive(nil).must_be_nil
    end
  end
end
