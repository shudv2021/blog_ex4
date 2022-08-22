FactoryBot.define do
factory :article do
  association :user
  title { 'New Article' }
  text { 'New Article text' }
  user_id { 1 }

  factory :article_with_comments do
    after :create do |article, evaluator|
      create_list :comment, 3, article: article
    end
  end

end

end
