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

describe('String#find_and_replace') do
  it("replaces string with parameter") do
    expect("I like cats".find_and_replace("cats", "dogs")).to eq("I like dogs")
  end
end

describe('Fixnum#coins') do
  it("find amount of quarters, dimes, etc") do
    expect((120).coins()).to eq(["4 quarter", "2 dime"])
  end
  it("find amount of quarters, dimes, etc") do
    expect((23).coins()).to eq(["2 dime", "3 penny"])
  end
  it("find amount of quarters, dimes, etc") do
    expect((5).coins()).to eq(["1 nickel"])
  end
  it("find amount of quarters, dimes, etc") do
    expect((2).coins()).to eq(["2 penny"])
  end
end
