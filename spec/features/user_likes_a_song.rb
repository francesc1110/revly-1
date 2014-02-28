require 'spec_helper'

describe "a user can like a song" do
  let!(:poster) { FactoryGirl.create(:user) }
  let!(:liker) { FactoryGirl.create(:user) }

  let!(:shared_tile) { FactoryGirl.create(:tile, user: poster) }

    it "allows user to like a song" do
      # FIXME At least a client_id or an access_token must be present when user logs in!
      login(poster)
      save_and_open_page
      


    end

    # it "allows user to see a history of their likes" do
    # end

    def login(user)
      visit "/login"
      within (".form") do
        fill_in :email, with: user.email
        fill_in :password, with: user.password
        click_button "Login"
      end
    end

end