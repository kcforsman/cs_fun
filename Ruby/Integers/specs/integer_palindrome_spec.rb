require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/integer_palindrome'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'integer_palindrome check methods' do
  describe 'integer_palindrome iterative' do
    it 'returns true for an odd digit palindrome' do
      is_integer_palindrome?(12321).must_equal true
    end
    it 'returns true for an even digit palindrome' do
      is_integer_palindrome?(123321).must_equal true
    end
    it 'returns false for a non-palindrome integer' do
      is_integer_palindrome?(12331).must_equal false
      is_integer_palindrome?(142331).must_equal false
    end
    it 'returns nil for invalid input' do
      is_integer_palindrome?(nil).must_be_nil
    end
    it 'returns nil for a negative integer' do
      is_integer_palindrome?(-123).must_be_nil
    end
  end
  describe 'integer_palindrome digits' do
    it 'returns true for an odd digit palindrome' do
      is_integer_palindrome_digits?(12321).must_equal true
    end
    it 'returns true for an even digit palindrome' do
      is_integer_palindrome_digits?(123321).must_equal true
    end
    it 'returns false for a non-palindrome integer' do
      is_integer_palindrome_digits?(12331).must_equal false
      is_integer_palindrome_digits?(142331).must_equal false
    end
    it 'returns nil for invalid input' do
      is_integer_palindrome_digits?(nil).must_be_nil
    end
    it 'returns nil for a negative integer' do
      is_integer_palindrome_digits?(-123).must_be_nil
    end
  end
  describe 'integer_palindrome recursive' do
    it 'returns true for an odd digit palindrome' do
      is_integer_palindrome_recursive?(12321).must_equal true
    end
    it 'returns true for an even digit palindrome' do
      is_integer_palindrome_recursive?(123321).must_equal true
    end
    it 'returns false for a non-palindrome integer' do
      is_integer_palindrome_recursive?(12331).must_equal false
      is_integer_palindrome_recursive?(142331).must_equal false
    end
    it 'returns nil for invalid integer' do
      is_integer_palindrome_recursive?(nil).must_be_nil
    end
    it 'returns nil for a negative integer' do
      is_integer_palindrome_recursive?(-43212).must_be_nil
      is_integer_palindrome_recursive?(-12321).must_be_nil
    end
  end
end
