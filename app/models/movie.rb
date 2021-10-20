# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
end
