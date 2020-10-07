class Attendance < ApplicationRecord
  belongs_to :player
  belongs_to :training

  def team
    training.team
  end
end