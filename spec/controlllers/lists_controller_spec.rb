require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  describe 'GET index' do
    it 'displays all the lists' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'displays the list I want' do
      list = List.create!(name: 'Ma fav')
      get :show, params: { id: list.to_param }
      expect(response).to render_template('show')
    end
  end

  describe 'DELETE' do
    it 'deletes the list I want' do
      list = List.create!(name: 'Ma fav')
      delete :destroy, id: post
      expect { delete :destroy, id: list }.to change { List.count }.by(-1)
    end
  end
end
