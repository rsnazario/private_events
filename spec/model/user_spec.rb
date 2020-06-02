require "rails_helper"

RSpec.describe User, :type => :model do
  let(:user1) { User.create!(username: 'user1') }
  let(:event1) { Event.create!(name: 'event1', even_when: '2020-12-21', description: 'etc') }

  context "Create a user" do
    it "insert value into database" do
      expect(user1.username).to eq('user1')
    end
  end

  context "Associations" do
    it "new event should retrieve creator id" do
      y = user1.event_creator.create(name: 'evento1')
      expect(y.creator_id).to eq(1)
    end
  end
end