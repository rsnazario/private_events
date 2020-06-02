require 'rails_helper'

RSpec.describe 'wherever', type: :system do
  describe 'it is a test test test' do
    it 'goo to home page' do
      visit('/')
    end
   end
end