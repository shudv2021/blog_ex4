FactoryBot.define do
  factory :comments do 
    author { 'mike' }
    sequince(:body) { |n| "comment body #{n}" }
  
end #finish 