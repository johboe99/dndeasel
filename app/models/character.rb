class Character < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :name, presence: true, length: { maximum: 16 }
  validates :classname, presence: true, inclusion: { in: %w(Barbar Barde Druide
                                                            Hexenmeister Kämpfer
                                                            Kleriker Magier Mönch
                                                            Paladin Schurke
                                                            Waldläufer Zauberer) }
  validates :level, presence: true, inclusion: 1..20
  validates :race, presence: true, inclusion: { in: %w(Elf Halbling Mensch Zwerg
                                                       Drachenblütig Gnom Halbelf
                                                       Halbork Tiefling) }
  validates :alignment, presence: true, inclusion: { in: %w(Lawful-Good Lawful-Neutral Lawful-Evil
                                                            Chaotic-Good Chaotic-Neutral Chaotic-Evil
                                                            Neutral-Good Neutral Neutral-Evil) }
  validates :background, presence: true, inclusion: { in: %w(Adeliger Einsiedler Zunfthandwerker
                                                             Krimineller Scharlatan Seemann
                                                             Soldat Sonderling Strassenkind
                                                             Tempeldiener Unterhaltungskünstler
                                                             Volksheld Weiser) }
  validates :expertise, presence: true, inclusion: { in: %w(Acrobatics AnimalHandling Arcana
                                                             Athletics Deception History
                                                             Insight Intimidation Investigation
                                                             Medicine Nature Perception
                                                             Performance Persuasion
                                                             Religion SleightOfHand
                                                             Stealth Survival) }
  validates :saving_throws, presence: true, inclusion: { in: ["Strength", "Dexterity", "Constitution",
                                                               "Intelligence", "Wisdom", "Charisma"] }

  def stat_mod(stat)
    (stat - 10) / 2
  end
end
