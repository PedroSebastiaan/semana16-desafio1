require 'rails_helper'

RSpec.describe WinesController, type: :controller do
    describe 'GET index' do
        it 'Give correctly wines in index' do
            wine = Wine.create(name: "test-name", year: 2010)
            get :index
            expect(assigns(:wines)).to eq([wine])
        end
        it 'Renders correctly index template' do
            get :index
            expect(response).to render_template('index')
        end
    end
    describe 'GET show' do
        it 'Renders correctly show template' do
            wine = Wine.create(name: "test-name", year: 2010)
            get :show, id: wine.id
            expect(response).to render_template('show')
        end
    end
end