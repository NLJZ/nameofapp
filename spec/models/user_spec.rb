require 'rails_helper'

describe User do

  context "first and last name present" do
    before do
      @user = FactoryBot.create(:user)
    end

    it "should return first name" do
      expect(@user.first_name).to eq "Anthony"
    end

    it "should return last name" do
      expect(@user.last_name).to eq "Dogman"
    end
  end

end