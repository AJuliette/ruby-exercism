class Tournament
  def self.tally(input)
    header = "Team                           | MP |  W |  D |  L |  P\n"
    return header if input.chomp.empty?

    teams_results_hash = {}

    input.lines.each do |line|
      match = line.chomp.split(";")
      teams_results_hash = set_teams(match, teams_results_hash)
      teams_results_hash = fill_results(match, teams_results_hash)
    end

    teams_results_array = teams_results_hash.to_a

    sorted_teams_results_array = sort_results(teams_results_array)

    table = fill_table(sorted_teams_results_array)
    
    header + table + ("\n")
  end

  def self.set_teams(line, hash)
    (0..1).to_a.map do |n|
      if hash[line[n]].nil?
        hash[line[n]] = { 'MP': 0, 'W': 0, 'D': 0, 'L': 0, 'P': 0 }
      end
    end
    hash
  end

  def self.fill_results(match, hash)
    team_1, team_2, result = match
  
    (0..1).to_a.map { |n| hash[match[n]][:MP] += 1 }

    case result
    when "win"
      hash[team_1][:W] += 1
      hash[team_2][:L] += 1
      hash[team_1][:P] += 3
    when "draw"
      (0..1).to_a.map do |n|
        hash[match[n]][:D] += 1
        hash[match[n]][:P] += 1
      end
    when "loss"
      hash[team_2][:W] += 1
      hash[team_1][:L] += 1
      hash[team_2][:P] += 3
    end
    hash
  end

  def self.sort_results(array)
    array.sort! do |a, b|
      if a[1][:P] == b[1][:P]
        a[0] <=> b[0]
      else
        b[1][:P] <=> a[1][:P]
      end
    end
  end

  def self.fill_table(array)
    array.map do |team|
      table = team[1].map do |k, v| 
        v < 9 ? "  #{v}" : " #{v}"
      end
      team[0] + " "*(31 - team[0].length) + "|" + table.join(" |")
    end.join("\n")
  end
end
