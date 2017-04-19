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
end
