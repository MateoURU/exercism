module Port
  
  IDENTIFIER = :PALE
  
  def self.get_identifier(city)
    identifier_string = city.slice(0,4).upcase
    identifier_string.to_sym
  end

  def self.get_terminal(ship_identifier)
    ship_identifier.to_s
    product = ship_identifier.slice(0,3)
    if product == 'OIL' || product == 'GAS'
      terminal = :A
    else
      terminal = :B
    end
  end
end
