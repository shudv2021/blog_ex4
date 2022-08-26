require 'rails_helper'

feature 'Account Creation' do
  scenario 'allows guest create accoutn' do
    visit new_user_registration_path
    
    fill_in :user_name, :with => 'Vasy'
    fill_in :user_email, :with => 'vasy@mail.ru'
    fill_in :user_password, :with => 12345678
    fill_in :user_passwod_confirmation => 1245678
    click_button 'Sign up'
    
    expect(page).to have_content 'Welcome! You have signed up successfully.'

  end
end