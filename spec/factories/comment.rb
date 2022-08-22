FactoryBot.define do
  factory :comment do 
    author { 'mike' }
    sequence(:body) { |n| "#{n}" }
  end
end #finish 