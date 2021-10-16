require 'rails_helper'

RSpec.describe List, type: :model do
  context 'validation test' do
    it 'ensures that the list has a name' do
      list = List.new(background_url: 'https://gmail.com/').save
      expect(list).to eq(false)
    end
  end
end
