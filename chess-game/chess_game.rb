class Chess
  FILES = 'A'..'H'
  RANKS = 1..8

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    first_name[0..1].upcase + last_name[-2..-1].upcase
  end

  def self.move_message(first_name, last_name, move)
    rank = move[1].to_i
    file = move[0]
    if valid_square?(rank, file)
      nick_name(first_name, last_name) + ' moved to ' + move
    else
      nick_name(first_name, last_name) + ' attempted to move to ' + move + ', but that is not a valid square'
    end
  end
end
