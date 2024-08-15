module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier.to_s[0..2]
    if ["OIL", "GAS"].include?(cargo)
      :A
    else
      :B
    end
  end
end
