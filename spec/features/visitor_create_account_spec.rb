require 'rails_helper'

feature 'Account Creation' do
  scenario 'allows guest create accoutn' do
  sign_in
    
    expect(page).to have_content 'Welcome! You have signed up successfully.'

  end
end

def sign_in
  visit new_user_registration_path
  
  fill_in :user_name, :with => 'Vasy'
  fill_in :user_email, :with => 'vasy@mail.ru'
  fill_in :user_password, :with => 12345678
  fill_in :user_password_confirmation, :with => 12345678
  click_button 'Sign up'
end