require "rails_helper"

# rspec spec/model/user_spec.rb
RSpec.describe User, :type => :model do
  let(:user1) { User.create!(username: 'user1') }

  context "Create a user" do
    it "insert value into database" do
      expect(user1.username).to eq('user1')
    end
  end

  context "Associations" do
    it "Creating a new event should retrieve creator id" do
      y = user1.event_creator.create(name: 'evento1')
      expect(y.creator_id).to eq(1)
    end
  end
end