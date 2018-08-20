
require 'rails_helper'

describe Comment do
  context "Validations test" do

    it "will not allow comment without rating" do
      expect(Comment.new(rating:nil)).not_to be_valid
    end
    it "will not allow a comment without a body" do
      expect(Comment.new(body:nil)).not_to be_valid
    end
    it "will not allow a comment without a user id" do
      expect(Comment.new(user_id:nil)).not_to be_valid
    end
    it "will not allow a comment with a non-integer rating" do
      expect(Comment.new(user_id: 1, body:"dfaf", rating: "faf")).not_to be_valid
    end
  end
end