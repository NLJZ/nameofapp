require 'rails_helper'

describe User do

  context "first and last name present" do
    let(:user) { User.new(first_name: "Bud", last_name: "Buddy")}

    it "should return first name" do
      expect(user.first_name).to eq "Bud"
    end

    it "should return last name" do
      expect(user.last_name).to eq "Buddy"
    end
  end

end