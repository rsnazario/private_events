require "rails_helper"

RSpec.describe Attendance, :type => :model do
  # Creating objects with let WONT SAVE ON OUR DB
  let(:user1) { User.create!(username: 'user1') }
  let(:event1) { user1.event_creator.create!(name: 'event1', event_when: '2020-12-21', description: 'etc') }
  let(:invitants) { Attendance.create!(attendee_id: 1, attended_event_id: 1)}

  context "A user can check what events he/she has to go" do 
    it "return name of the events attended / to be attended" do
      user1;
      event1;
      invitants;
      expect(user1.attended_events.first.name).to eq('event1')
    end
  end

  context "A created event should belong to a user as its creator" do
    it "It should check for an event creator_id and return it" do
      expect(event1.creator.username).to eq(user1.username )
    end
  end
end