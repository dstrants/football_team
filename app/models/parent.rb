# frozen_string_literal: true
class Parent < ApplicationRecord
    has_many :players, foreign_key: "parent_id"
end
