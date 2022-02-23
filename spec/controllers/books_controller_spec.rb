require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe 'POST /books' do
    it 'create a new book object' do
      post :create, params: { name: "harry potter" }

      expect(Book.count).to eq(1)
    end
  end
end
