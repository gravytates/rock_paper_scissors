require('capybara/rspec')
require('./app')
Capybara.app=Sinatra::Application
set(:show_exceptions, false)

describe('the is_tie? case path', {:type => :feature}) do
  it('informs the players that the game is a tie if the moves were identical') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'rock')
    click_button('Play')
    expect(page).to have_content('Game is a tie')
  end
end
describe('the beats? case path', {:type => :feature}) do
  it('when player 1 plays rock and player 2 plays scissors inform the players player 1 wins') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button('Play')
    expect(page).to have_content('1')
  end
end
