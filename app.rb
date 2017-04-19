require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/beats?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @p1_input = params.fetch('player1')
  @p2_input = params.fetch('player2')
  @result = @p1_input.beats?(@p2_input)
  erb(:results)
end
