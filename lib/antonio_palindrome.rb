# frozen_string_literal: true

require_relative "antonio_palindrome/version"

module AntonioPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end


  private
  def processed_content
    to_s.split(/[^\w|\d]/).join.downcase
  end
end

class String
  include AntonioPalindrome
end
class Integer
  include AntonioPalindrome
end
