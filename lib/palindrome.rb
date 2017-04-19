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
# class String
#   def palindrome?
#     self_formatted = self.downcase.gsub(/[^a-z0-9]/i, '')
#     reversed_formatted = self_formatted.reverse()
#     if reversed_formatted == self_formatted
#       true
#     else
#       false
#     end
#   end
# end

class String
  def palindrome?
    self_formatted = self.downcase.gsub(/[^a-z0-9]/i, '')
    self_formatted_array = self_formatted.split("")
    reversed_array = []
    self_formatted_array.each() do |letter|
      reversed_array.unshift(letter)
    end
    reversed_formatted = reversed_array.join()
    puts("word: " + self_formatted)
    puts("reversed: " + reversed_formatted)
    if reversed_formatted == self_formatted
      true
    else
      false
    end
  end
end

class String
  def find_and_replace(find, replacewith)
    split_self = self.split()
    index_of_find = split_self.index(find)
    split_self[index_of_find] = replacewith
    replaced = split_self.join(" ")

    # replaced = self.sub!(find, replacewith)
    puts(replaced)
    replaced
  end
end

class Fixnum
  def coins
    money = self
    coins = []
    coin_options = {"quarter"=>25, "dime"=>10, "nickel"=>5, "penny"=>1}
    coin_options.keys.each() do |key|
      coin = coin_options.fetch(key)
      if money >= coin
        num_coins = (money/coin).floor()
        money -= num_coins * coin
        coins.push(num_coins.to_s() + " " + key)
      end
    end
    puts(coins)
    coins
  end
end
