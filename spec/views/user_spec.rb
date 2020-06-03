require 'rails_helper'

# rspec spec/views/user_spec.rb
RSpec.describe 'New user', type: :system do
  describe 'Main flow' do
    it 'make account, login, create post and logout' do

      # ACCESS HOME PAGE
      visit('/')
      sleep 3

      # GO TO REGISTRATION PAGE
      click_link('REGISTER')
      sleep 1
    
      fill_in('user[username]', with: 'asd')
      sleep 2
      click_button('Make it!')

      # GO TO LOGIN PAGE
      visit('/sessions/new')
      sleep 1

      # CAN MAKE LOGIN
      fill_in('username_in', with: 'asd')
      sleep 1
      click_button('Login')
      sleep 1

      # should access new event view
      click_link('Create Event')
      sleep 1

      # fill the events parameters
      fill_in('event[name]', with: 'RSPEC TESTING')
      sleep 1
      fill_in('event[event_when]', with: Time.now+1.month)
      sleep 3
      fill_in('event[description]', with: 'Finally All Have Been Tested')
      sleep 2
      click_button('Create Event')

      sleep 3

      # farewell my friends
      click_link('LOGOUT')
      sleep 3

      # check current url between requests
      # expect(current_path).to have_content('/events/new')
    end
  end
end