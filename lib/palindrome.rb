# Palindromes
# This one is tricky and will require all the methods we've introduced so far. A palindrome is any word, phrase, number, or other sequence of characters which reads the same backward or forward. Create a method to identify if a word is a palindrome.
#
# The easy way: There is a method String#reverse. Check it out in IRB to see what it does.
#
# The hard way: Create the method without using the reverse() method.
#
# After specs are passing, build a website, with CSS, where someone can go to check if their words are palindromes.
#
# Bonus points: Make your method check a string of words and also a Fixnum.
class String
  def palindrome?
    self_formatted = self.downcase.gsub(/[^a-z0-9]/i, '')
    reversed_formatted = self.downcase.gsub(/[^a-z0-9]/i, '').reverse()
    if reversed_formatted == self_formatted
      true
    else
      false
    end
  end
end
