require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @rolls = []
  @dice = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i
  @dice.times do
    curr_dice = rand(1..@sides)
    @rolls.push(curr_dice)
  end
  erb(:flexible)
end
