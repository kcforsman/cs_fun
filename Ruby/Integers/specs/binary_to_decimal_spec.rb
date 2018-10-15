require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'binary_to_decimal methods' do
  describe 'binary_to_decimal iterative' do
    it 'can return the correct integer value for a binary array' do
      binary_array = [1, 0, 1, 1, 0]

      result = binary_to_decimal(binary_array)
      result.must_equal 22
    end
    it 'can return a different integer value for a binary array' do
      binary_array = [1, 0, 0, 1, 1, 0, 1, 1]

      result = binary_to_decimal(binary_array)
      result.must_equal 155
    end
    it 'returns null for an empty array' do
      binary_array = []

      result = binary_to_decimal(binary_array)
      result.must_be_nil
    end
    it 'returns null for an invalid input' do
      binary_array = nil

      result = binary_to_decimal(binary_array)
      result.must_be_nil
    end
  end
  describe 'binary_to_decimal_recursive' do
    it 'can return the correct integer value for a binary array' do
      binary_array = [1, 0, 1, 1, 0]

      result = binary_to_decimal_recursive(binary_array)
      result.must_equal 22
    end
    it 'can return a different integer value for a binary array' do
      binary_array = [1, 0, 0, 1, 1, 0, 1, 1]

      result = binary_to_decimal_recursive(binary_array)
      result.must_equal 155
    end
    it 'returns null for an empty array' do
      binary_array = []

      result = binary_to_decimal_recursive(binary_array)
      result.must_be_nil
    end
    it 'returns null for an invalid input' do
      binary_array = nil

      result = binary_to_decimal_recursive(binary_array)
      result.must_be_nil
    end
  end
end
