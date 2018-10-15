require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'decimal_to_binary methods' do
  describe 'decimal_to_binary iterative' do
    it 'can return the correct integer value for a binary array' do
      result = decimal_to_binary(22)

      result.must_equal [1, 0, 1, 1, 0]
    end
    it 'can return a different integer value for a binary array' do
      result = decimal_to_binary(155)

      result.must_equal [1, 0, 0, 1, 1, 0, 1, 1]
    end
    it 'returns nil for invalid input' do
      result = decimal_to_binary(nil)

      result.must_be_nil
    end
  end
  describe 'decimal_to_binary recursive' do
    it 'can return the correct integer value for a binary array' do
        result = decimal_to_binary_recursive(22)

        result.must_equal [1, 0, 1, 1, 0]
    end
    it 'can return a different integer value for a binary array' do
        result = decimal_to_binary_recursive(155)

        result.must_equal [1, 0, 0, 1, 1, 0, 1, 1]
    end
    it 'returns null for an empty array' do
        result = decimal_to_binary_recursive(nil)

        result.must_be_nil
    end
  end
end
