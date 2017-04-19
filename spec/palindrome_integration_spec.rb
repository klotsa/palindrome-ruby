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
