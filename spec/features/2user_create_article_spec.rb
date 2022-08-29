require 'rails_helper'

feature 'Article Createion' do 
  #like callback
  before(:each) do
    sign_up
  end
  
  scenario 'allows user to visit new article page' do
    visit new_article_path

    expect(page).to have_content 'Create new article'
  end
  
  scenario 'allows users create new articles' do
    visit new_article_path
        
    fill_in :article_title, :with => 'New test article'
    fill_in :article_text, :with => 'Test article text'
    click_button 'Create Article'
    expect(page).to have_content 'New test article'
  end
  end
