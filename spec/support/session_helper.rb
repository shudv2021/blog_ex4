def sign_up
  visit new_user_registration_path
  
  fill_in :user_name, :with => 'Vasy1'
  fill_in :user_email, :with => 'vas@mail.ru'
  fill_in :user_password, :with => 12345678
  fill_in :user_password_confirmation, :with => 12345678
  click_button 'Sign up'
end