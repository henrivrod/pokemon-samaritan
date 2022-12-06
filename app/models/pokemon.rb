class Pokemon < ApplicationRecord
  has_many :poke_types
  has_many :types, through: :poke_types
end