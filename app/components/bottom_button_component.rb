# frozen_string_literal: true
class BottomButtonComponent < ViewComponent::Base
  def initialize(color:, icon:, link:, icon_type: 's')
    @color = color
    @icon = icon
    @icon_type = icon_type
    @link = link
  end
end
