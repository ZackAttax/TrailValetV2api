class Trail < ApplicationRecord
    has_many :valets
    validates :name, presence: true
    validates :name, presence: true
end
