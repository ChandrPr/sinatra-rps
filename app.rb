require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  @your_move = :rock
  moves = {1 => :rock, 2 => :paper, 3 => :scissors}
  your_move_int = moves.key(@your_move)
  their_move_int = rand(1..3)
  @their_move = moves[their_move_int]

  case (your_move_int - their_move_int) % 3
  when 0
    @outcome = "We tied!"
  when 1 #Or -2
    @outcome = "You win!"
  when 2 #Or -1
    @outcome = "You lost!"
  end
  erb(:rps)
end

get("/paper") do
  @your_move = :paper
  moves = {1 => :rock, 2 => :paper, 3 => :scissors}
  your_move_int = moves.key(@your_move)
  their_move_int = rand(1..3)
  @their_move = moves[their_move_int]

  case (your_move_int - their_move_int) % 3
  when 0
    @outcome = "We tied!"
  when 1 #Or -2
    @outcome = "You win!"
  when 2 #Or -1
    @outcome = "You lost!"
  end
  erb(:rps)
end

get("/scissors") do
  @your_move = :scissors
  moves = {1 => :rock, 2 => :paper, 3 => :scissors}
  your_move_int = moves.key(@your_move)
  their_move_int = rand(1..3)
  @their_move = moves[their_move_int]

  case (your_move_int - their_move_int) % 3
  when 0
    @outcome = "We tied!"
  when 1 #Or -2
    @outcome = "You win!"
  when 2 #Or -1
    @outcome = "You lost!"
  end
  erb(:rps)
end
