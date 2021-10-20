# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, presence: true
  validates :overview, presence: true
  validates :poster_url, presence: true
end
