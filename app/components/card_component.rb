# frozen_string_literal: true

# Component that renders a bootstap (CoreUI) card
class CardComponent < ViewComponent::Base
  with_content_areas :title, :body
end