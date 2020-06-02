require "rails_helper"

RSpec.describe Event, :type => :model do
  # Creating objects with let WONT SAVE ON OUR DB
  let(:user1) { User.create!(username: 'user1') }
  let(:event1) { user1.event_creator.create!(name: 'event1', event_when: '2020-12-21', description: 'etc') }

  context "A created event should belong to a user as its creator" do
    it "It should check for an event creator_id and return it" do
      expect(event1.creator.username).to eq(user1.username )
    end
  end
end