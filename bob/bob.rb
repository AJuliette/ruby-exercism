class Bob
  def self.hey(remark)
    case remark
    when -> (n) { n.include?('?') && n.upcase == remark && remark.count("a-zA-Z") > 0 }
      "Calm down, I know what I'm doing!"
    when -> (n) { n.gsub(" ", "").end_with?('?') }
      "Sure."
    when -> (n) { n.upcase == remark && remark.count("a-zA-Z") > 0 }
      "Whoa, chill out!"
    when -> (n) { n.gsub(" ", "").gsub("\t", "").gsub("\r", "").chomp.empty? }
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
