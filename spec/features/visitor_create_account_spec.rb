require 'rails_helper'

feature 'Account Creation' do
  
  before(:all) do
  sign_up
  end
    
  scenario 'allows guest create accoutn' do
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
