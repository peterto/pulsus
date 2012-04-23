require 'spec_helper'

describe "Users" do
  describe "new" do
    it "should check for a login page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/users/new'
      page.should have_content('sign up')
    end
  end
end
