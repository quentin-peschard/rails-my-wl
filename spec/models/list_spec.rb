require 'rails_helper'

RSpec.describe List, type: :model do
  context 'validation test' do
    it 'ensures that the list has a name' do
      list = List.new(background_url: 'https://gmail.com/').save
      expect(list).to eq(false)
    end

    it 'ensures that the list is created even without url' do
      list = List.new(name: 'My favorite movies').save
      expect(list).to eq(true)
    end

    it 'should save successfully' do
      list = List.new(name: 'My favorite movies', background_url: 'https://gmail.com/').save
      expect(list).to eq(true)
    end

    it 'ensures that two lists cannot have the same name' do
      list = List.new(name: 'My favorite movies', background_url: 'https://gmail.com/').save
      expect(list).to eq(true)
      list_two = List.new(name: 'My favorite movies', background_url: 'https://gmail.com/').save
      expect(list_two).to eq(false)
    end
  end
end
