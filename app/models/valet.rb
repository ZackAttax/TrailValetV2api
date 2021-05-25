class Valet < ApplicationRecord
  belongs_to :trail
  validates :issue, presence: true
end
