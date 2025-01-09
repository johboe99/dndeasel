class Character < ApplicationRecord
  belongs_to :user
  has_many :games

  validates :name, presence: true, length: { maximum: 16 }
  validates :classname, presence: true, inclusion: { in: %w(Barbar Barde Druide
                                                            Hexenmeister Kämpfer
                                                            Kleriker Magier Mönch
                                                            Paladin Schurke
                                                            Waldläufer Zauberer) }
  validates :level, presence: true, inclusion: 1..20
end
