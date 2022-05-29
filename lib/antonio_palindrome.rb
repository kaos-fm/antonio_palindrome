# frozen_string_literal: true

require_relative "antonio_palindrome/version"

module AntonioPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end


  private
  def processed_content
    split(/[^\w]/).join.downcase
  end
end

class String
  include AntonioPalindrome
end 
