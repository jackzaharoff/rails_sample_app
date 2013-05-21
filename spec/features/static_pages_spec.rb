require 'spec_helper'



describe "StaticPages" do
  subject { page }
   describe "Home page" do
     before { visit root_path }
     it "should have the h1 'Sample App'" do
       should have_selector('h1', :text => 'Sample App')
     end
     it "should have the title 'Home'" do
       should have_title(full_title("Home"))
     end
   end
  describe "Help page" do
    before { visit help_path }
    it "should have the h1 'Help'" do
      should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      should have_title(full_title("Help"))
    end
  end
  describe "About Us page" do
    before { visit about_path }
    it "should have the h1 'About Us'" do
      should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'Home'" do
      should have_title (full_title("About Us"))
    end
  end
  describe "Contact page" do
    before { visit contact_path }
    it "should have the h1 'Contact Page'" do
      should have_selector('h1', text: 'Contact Page')
    end
    it "should have title 'Contact Page'" do
      should have_title(full_title("Contact Page"))
    end
  end
end
