require('rspec')
require('beats?')

describe("String#beats?") do
  it('returns true if rock is the object and scissors is the argument') do
    expect('rock'.beats?('scissors')).to(eq(true))
  end

  it('returns true if any player 1 win condition is met') do
    expect('paper'.beats?('rock')).to(eq(true))
  end
end

describe("String#is_tie?") do
  it('returns true if p1 and p2 have submitted the same move') do
    expect('rock'.is_tie?('rock')).to(eq(true))
  end
end
