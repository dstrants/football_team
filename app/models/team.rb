class Team < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    has_many :players, foreign_key: "team_id"
    has_many :trainings, foreign_key: "team_id"

    def next_training
        trainings.where(scheduled_at: DateTime.now..).order(:scheduled_at).first
    end
end
