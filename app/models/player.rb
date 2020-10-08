class Player < ApplicationRecord
  belongs_to :team
  has_one :user, through: :team
  belongs_to :parent, foreign_key: "parent_id"
  has_many :attendances, foreign_key: "player_id"

  def attended?(training_id)
    attendances.where(training_id: training_id).exists?
  end

  def attend(training_id)
    attendances.create(training_id: training_id, player_id: self.id)
  end

  def undo_attend(training_id)
    attendances.where(training_id: training_id).delete_all
  end

  def toggle_attendance(training_id)
    attended?(training_id) ? undo_attend(training_id) : attend(training_id)
  end

  def score_p
    attendances.count / team.past_trainings.count
  end

  def score_str
    "#{attendances.count}/#{team.past_trainings.count}"
  end
end
