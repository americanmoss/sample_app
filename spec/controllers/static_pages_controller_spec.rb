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

    it "should have a non-blank body" do
      visit '/static_pages/home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end

end

  describe "GET 'contact'" do

    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
        visit '/static_pages/contact'
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end

  end

    describe "GET 'about'" do

    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
        visit '/static_pages/about'
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end

  end

end
