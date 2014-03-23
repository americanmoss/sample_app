require 'spec_helper'

describe StaticPagesController do
  render_views

  describe "GET 'home'" do

    it "returns http success" do
      get 'home'
      response.should be_success
    end

  it "should have the right title" do
    visit '/static_pages/home'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    
  end

end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

    describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

end
