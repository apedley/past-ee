require 'rails_helper'

RSpec.describe "Static", :type => :request do
  describe "help page" do
  	it "should have the content 'Help Me'" do
      get "/static/help"
      expect(response.body).to include("Help Me")
    end
  end

  describe "home page" do
    it "should have the content 'Past-ee'" do
      get "/static/home"
      expect(response.body).to include("Past-ee")
    end
  end
end
