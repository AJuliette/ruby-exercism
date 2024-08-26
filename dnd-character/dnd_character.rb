class DndCharacter
  def initialize
    @constitution = calculate_characteristic
    @strength = calculate_characteristic
    @dexterity = calculate_characteristic
    @intelligence = calculate_characteristic
    @wisdom = calculate_characteristic
    @charisma = calculate_characteristic
  end

  def self.modifier(constitution)
    ((constitution - 10) / 2).floor
  end

  def hitpoints
    10 + DndCharacter.modifier(constitution)
  end

  def constitution
    @constitution
  end

  def strength
    @strength
  end

  def dexterity
    @dexterity
  end

  def intelligence
    @intelligence
  end

  def wisdom
    @wisdom
  end

  def charisma
    @charisma
  end

  def calculate_characteristic
    [rand(1..6), rand(1..6), rand(1..6), rand(1..6)].max(3).sum
  end
end
