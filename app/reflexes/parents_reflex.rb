# frozen_string_literal: true

class ParentsReflex < ApplicationReflex
  def create(name, phone)
    Parent.create(name: name, phone: phone)
  end
end
