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

  if @p1_input.is_tie?(@p2_input)
    @result = "Game is a tie"
  elsif @p1_input.beats?(@p2_input)
    @result = @p1_input + " beats " + @p2_input + ". Player 1 wins!"
  else
    @result = @p2_input + " beats " + @p1_input + ". Player 2 wins!"
  end
  erb(:results)
end

get('/cpugame') do
  @p_input = params.fetch('player')
  @cpu_move = "duncare".play_cpu

  if @p_input.is_tie?(@cpu_move)
    @result = "Game is a tie"
  elsif @p_input.beats?(@cpu_move)
    @result = @p_input + " beats " + @cpu_move + ". Player 1 wins!"
  else
    @result = @cpu_move + " beats " + @p_input + ". Computer wins!"
  end
  erb(:cpu_results)
end
