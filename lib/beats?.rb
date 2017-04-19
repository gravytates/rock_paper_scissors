class String
  define_method(:beats?) do |p2|
    has_won = false
    beats = {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }

    p1 = self
    if beats.fetch(p1.downcase) == p2.downcase
      has_won = true
    end
    has_won
  end

  define_method(:is_tie?) do |p2|
    self.downcase == p2.downcase
  end


  define_method(:play_cpu) do
    prng = Random.new
    p_move = self.downcase
    cpu_moves = ["rock", "paper", "scissors"]
    cpu_moves[prng.rand(3)]
  end
end
