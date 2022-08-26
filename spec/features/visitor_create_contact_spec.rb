require 'rails_helper'

feature 'Contacts Creation' do
  scenario 'allows acers to contact pages' do
    visit '/contacts/new'
      expect(page).to have_content I18n.t('contacts.contact_us')
  end
  
  scenario 'allows guest registrated' do
    visit '/contacts/new'
      fill_in :email, :with => 'new@mail.ru'
      fill_in :message, :with => 'new message'
      click_button 'Send message'
      expect(page).to have_content 'Rails-blog'
  end 
  
end