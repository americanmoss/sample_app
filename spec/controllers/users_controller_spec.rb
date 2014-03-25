require 'spec_helper'

describe UsersController do
	render_views
  	describe "GET 'new'" do
    		it "returns http success" do
		      get 'new'
		      response.should be_success
		end
	end

  it "should have the right title" do
  	visit "/signup"
  	expect(page).to have_title("Signup")
  end

  it "should have a non-blank body" do
      visit '/signup'
      response.body.should_not =~ /<body>\s*<\/body>/
  end

end
