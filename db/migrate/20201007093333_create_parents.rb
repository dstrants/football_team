# frozen_string_literal: true
class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end
