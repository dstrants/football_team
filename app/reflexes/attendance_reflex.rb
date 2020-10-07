# frozen_string_literal: true

class AttendanceReflex < ApplicationReflex
    def toggle_attendace(argument=true)
        puts "The id is #{element.dataset["uid"]}"
        puts "The pid is #{element.dataset["uid"]}"
        puts "The id is #{element.dataset["reflex"]}"
        @player = Player.find(element.dataset["uid"])
        @player.toggle_attendance(element.dataset["tid"])
    end
end