class Type < ActiveRecord::Base
  has_many :poke_types
  has_many :pokemon, through: :poke_types
end