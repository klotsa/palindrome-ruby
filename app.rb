require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/palindrome')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @display = params.fetch("word").palindrome?()
  erb(:result)
end
