# frozen_string_literal: true
json.extract! player, :id, :name, :team_id, :parent_id, :created_at, :updated_at
json.url team_player_url(player, format: :json)
