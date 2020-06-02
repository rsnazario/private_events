require "rails_helper"

RSpec.describe User, :type => :model do
  let(:user1) { User.create!(username: 'user1') }
  let(:event1) { Event.create!(name: 'event1', even_when: '2020-12-21', description: 'etc') }

  context "Create a user" do
    it "insert value into database" do
      expect(user1.username).to eq('user1')
    end
  end

  context "Check Associations" do
    it "should exist" do
      link = user1.event_creator.create(name: 'event1')
      expect(event1.creator_id).to eq(1)
    end
  end
end