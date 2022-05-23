class LevelRequirement < ApplicationRecord
    belongs_to :opportunity
    belongs_to :level
end
