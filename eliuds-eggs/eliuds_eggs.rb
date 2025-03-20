class EliudsEggs
  def self.egg_count(decimal_number)
    ("%b" % decimal_number).scan(/(?=#{'1'})/).count
  end
end
