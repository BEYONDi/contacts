require 'rails_helper'

describe ContactsController do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code:' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it 'render index template' do
      get :index
      expect(response).to render_template(:index)
    end
    
    it 'populates array of contacts'

  end
  describe 'Get #show' do
    it 'render the #show view' do
      get :show, id: create(:john)
      expect(response).to render_template(:show)
    end
  end
end
