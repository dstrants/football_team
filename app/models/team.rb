# frozen_string_literal: true
class Team < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    has_many :players, foreign_key: "team_id"
    has_many :trainings, foreign_key: "team_id"

    alias_attribute :trainer, :user

    def season_start
        now = DateTime.now
        year = now.month >= 9 ? now.year : now.year - 1
        DateTime.new(year, 9, 1, 0, 0)
    end

    def past_trainings
        trainings.where(scheduled_at: season_start..DateTime.now).order(:scheduled_at)
    end

    def future_trainings
        trainings.where(scheduled_at: DateTime.now..).order(:scheduled_at)
    end

    def next_training
        future_trainings.order(:scheduled_at).first
    end
end
