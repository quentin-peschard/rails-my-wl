# frozen_string_literal: true

class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
end
