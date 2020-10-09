# frozen_string_literal: true

# Reflex that handles actions related to player attendances to trainings
class AttendanceReflex < ApplicationReflex
  def toggle_attendace(_argument = true)
    @player = Player.find(element.dataset['uid'])
    @player.toggle_attendance(element.dataset['tid'])
  end
end
