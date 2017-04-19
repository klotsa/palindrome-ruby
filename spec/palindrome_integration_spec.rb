require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('String#palindrome', {:type => :feature}) do
  it('processes the user entry and checks if it is a palindrome') do
    visit('/')
    fill_in('word', :with => 'racecar')
    click_button('Send')
    expect(page).to have_content(true)
  end
end

describe('String#find_and_replace', {:type => :feature}) do
  it('replaces string with passed parameter') do
    visit('/')
    fill_in('Find and Replace', :with => 'i like cats')
    fill_in('Find', :with => 'cats')
    fill_in('Replace', :with => 'dogs')
    click_button('Send Replacement')
    expect(page).to have_content('i like dogs')
  end
end
