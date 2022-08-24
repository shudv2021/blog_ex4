require 'rails_helper'

feature 'Account Creation' do
  scenario 'allows guest create accoutn' do
    visit new_user_registration_path
  end
 
end