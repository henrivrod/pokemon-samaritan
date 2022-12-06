class Pokemon < ActiveRecord::Base
  has_many :poke_types
  has_many :type, through: :poke_types
end