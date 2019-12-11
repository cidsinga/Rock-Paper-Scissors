require('rspec')
require('project')


describe('#Game') do
it("returns true if rock is the object and scissors is the argument") do
  game = Game.new("rock", "scissors")
  expect(game.game_win()).to(eq("win"))
  end
it("returns a Player 1 win total as 1") do
  game = Game.new("rock", "scissors")
  game.game_win()
  expect(game.player_one_wins()).to(eq(1))
end
end
