# frozen_string_literal: true
class AddParentToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :parent, null: false, foreign_key: true
  end
end
