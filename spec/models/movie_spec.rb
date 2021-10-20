require 'rails_helper'

RSpec.describe Movie, type: :model do
  context 'validation tests' do
    it 'ensures the movie has a title' do
      movie = Movie.new(overview: 'chinese movie', poster_url: 'www.smt.jpg').save
      expect(movie).to eq(false)
    end

    it 'ensures the movie has an overview' do
      movie = Movie.new(title: 'So Long, My Son', poster_url: 'www.smt.jpg').save
      expect(movie).to eq(false)
    end

    it 'ensures the movie has a poster_url' do
      movie = Movie.new(title: 'So Long, My Son', overview: 'chinese movie').save
      expect(movie).to eq(false)
    end
  end
end
