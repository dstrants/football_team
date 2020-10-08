# frozen_string_literal: true
class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.references :team, null: false, foreign_key: true
      t.datetime :scheduled_at
      t.string :location

      t.timestamps
    end
  end
end
