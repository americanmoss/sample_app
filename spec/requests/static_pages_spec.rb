require 'spec_helper'

describe "StaticPages" do

	it "should have a Home page at /" do
		visit "/"
		expect(page).to have_title("Home")
	end

	it "should have a Contact page at /contact" do
		visit "/contact"
		expect(page).to have_title("Contact")
	end

	it "should have an About page at /about" do
		visit "/about"
		expect(page).to have_title("About")
	end

	it "should have a Help page at /help" do
		visit "/help"
		expect(page).to have_title("Help")
	end

end
