class Level < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :level_requirements, dependent: :destroy
    has_many :opportunities, through: :level_requirements
end
