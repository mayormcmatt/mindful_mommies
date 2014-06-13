require 'rails_helper'

describe ArticlesController do
  describe "GET #index" do
    it "responds with a 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    # it "renders index page" do
    #   get rspec syntax to check page render
    # end
  end
end