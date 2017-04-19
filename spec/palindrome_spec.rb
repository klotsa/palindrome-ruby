require('rspec')
require('palindrome')

describe('String#palindrome?') do
  it("returns false for a word that is not a palindrome") do
    expect("abracadabra".palindrome?()).to eq(false)
  end
  it("returns true for a word that is a palindrome") do
    expect("racecar".palindrome?()).to eq(true)
  end
  it("returns true for a phrase") do
    expect("Race fast, safe car".palindrome?()).to eq(true)
  end
end
