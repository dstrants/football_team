# frozen_string_literal: true

# Component encapsulate Bootstrap Modal
class ModalComponent < ViewComponent::Base
  with_content_areas :title, :body, :footer

  def initialize(id:)
    @id = id
  end
end
