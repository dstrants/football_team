class Team < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    has_many :players, foreign_key: "team_id"
    has_many :trainings, foreign_key: "team_id"
end
