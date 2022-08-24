require 'rails_helper'

feature 'Contacts Creation' do
  scenario 'allows acers to contact pages' do
    visit '/contacts/new'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end
  
end