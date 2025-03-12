class Port
  IDENTIFIER = :PALE

  def self.get_identifier(port)
    port[0..3].upcase.to_sym
  end

  def self.get_terminal(identifier)
    carriyng = identifier[0..2]
    case carriyng
      when "OIL", "GAS"
        "a".upcase.to_sym
      else
        "b".upcase.to_sym
    end
  end
end
