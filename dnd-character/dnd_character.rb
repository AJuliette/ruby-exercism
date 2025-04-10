require 'pry'

class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma

  def initialize
    @strength = calculate_attribute
    @dexterity = calculate_attribute
    @constitution = calculate_attribute
    @intelligence = calculate_attribute
    @wisdom = calculate_attribute
    @charisma = calculate_attribute
  end

  def self.modifier(attribute_score)
    ((attribute_score - 10) / 2).floor
  end

  def hitpoints
    10 + DndCharacter.modifier(constitution)
  end

  def calculate_attribute
    4.times.map { (1..6).to_a.sample }.max(3).sum
  end
end

binding.pry