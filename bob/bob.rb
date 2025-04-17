class Bob
  IsAskingLoudly = -> (n) { IsAsking[n] && IsYelling[n] }
  IsAsking = -> (n) { n.end_with?('?') }
  IsYelling = -> (n) { n.upcase == n && n =~ /[A-Z]/ }
  IsSilent = -> (n) { n.gsub(/\s/, '').empty? }

  def self.hey(remark)
    remark.strip!
    case remark
    when IsAskingLoudly
      "Calm down, I know what I'm doing!"
    when IsAsking
      "Sure."
    when IsYelling
      "Whoa, chill out!"
    when IsSilent
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
