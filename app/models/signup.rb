class Signup < ApplicationRecord
  belongs_to :Camper
  belongs_to :Activity

  validates :time, inclusion: { in: (0..23) }
end
