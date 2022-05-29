# frozen_string_literal: true

require "test_helper"

class TestAntonioPalindrome < Minitest::Test
  def test_not_palindrome
    refute "apple".palindrome?
  end
  def test_palindrome_literal
    assert "racecar".palindrome?
  end
  def test_Upcase_palindrome
    assert "Racecar".palindrome?
  end
  def test_punctuation_palindrome
    assert "Madam,I'm Adam.".palindrome?
  end
  def test_letters
    assert_equal "MadamImAdam","Madam,I'm Adam.".send(:letters)
  end
end
