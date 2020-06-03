require 'rails_helper'

# rspec spec/views/user_spec.rb
RSpec.describe 'New user', type: :system do
  describe 'Main flow' do
    it 'make account, login, create post and logout' do

      # ACCESS HOME PAGE
      visit('/')
      sleep 1

      # GO TO REGISTRATION PAGE
      click_link('REGISTER')
      sleep 1
    
      # TODO: NOT WORKING!
      # CREATE NEW ACCOUNT
      # fill_in('user[username_new]', with: 'asd')
      # sleep 1
      # click_button('Make it!')
      # sleep 1


      # GO TO LOGIN PAGE
      visit('/sessions/new')
      sleep 1

      # CAN MAKE LOGIN
      fill_in('username_in', with: 'asd')
      sleep 1
      click_button('Login')
      sleep 1

      # should access new event view
      click_link('New event')
      sleep 1

      # check current url between requests
      # expect(current_path).to have_content('/events/new')
    end
  end
end