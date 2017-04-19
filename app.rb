require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/beats?')
require('./lib/is_tie?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @p1_input = params.fetch('player1')
  @p2_input = params.fetch('player2')

  if @p1_input.is_tie?(@p2_input)
    @result = "Game is a tie"
  # elsif @p1_input.beats?(@p2_input)
  #   @result = @p1_input + " beats " + @p2_input + ". Player 1 wins!"
  # else
  #   @result = @p2_input + " beats " + @p1_input + ". Player 2 wins!"
  end
  erb(:results)
end
