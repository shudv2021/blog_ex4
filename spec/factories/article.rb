FactoryBot.define do
factory :article do
  association :user
  title { 'New Article' }
  text { 'New Article text' }
  user_id { 1 }

  factory :aritcle_with_comments do
  
  end

end

end
