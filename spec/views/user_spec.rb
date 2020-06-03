require 'rails_helper'

# rspec spec/views/user_spec.rb
RSpec.describe 'Main flow', type: :system do
  describe 'New user' do
    it 'Make account, login, create post and logout' do
      # ACCESS HOME PAGE
      visit('/')
      sleep 1

      # GO TO REGISTRATION PAGE
      click_link('REGISTER')
      sleep 1

      # CREATE NEW USER
      fill_in('user[username]', with: 'asd')
      sleep 1
      click_button('Make it!')

      # GO TO LOGIN PAGE
      visit('/sessions/new')
      sleep 1

      # MAKE LOGIN
      fill_in('username_in', with: 'asd')
      sleep 1
      click_button('Login')
      sleep 1

      # ACCESS CREATE EVENT VIEW
      click_link('Create Event')
      sleep 1

      # check current url between requests
      # expect(current_path).to have_content('/events/new')

      # CREATE NEW EVENT
      fill_in('event[name]', with: 'RSPEC TESTING')
      sleep 1
      fill_in('event[event_when]', with: Time.now + 1.month)
      sleep 1
      fill_in('event[description]', with: 'Finally All Have Been Tested')
      sleep 1
      click_button('Create Event')
      sleep 1

      # farewell my friends
      click_link('LOGOUT')
      sleep 1
    end
  end
end
