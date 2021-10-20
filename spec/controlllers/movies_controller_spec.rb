require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'GET index' do
    it 'displays all the movies' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
