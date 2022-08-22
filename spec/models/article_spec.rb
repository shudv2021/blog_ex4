require 'rails_helper'

describe Article do
  describe 'associations' do
    it { should have_many :comments } 
  end
  
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
  
  describe '#subject' do
    it 'subject get title' do
    article = create(:article, title: 'Lorem')
    #asssert
    expect(article.subject).to eq 'Lorem'
    end
  end
  
  describe '#last_comment' do
    it 'returne last comment' do
      article = create(:article_with_comments)
      expect(article.last_comment.body).to eq '3'
    end
  end
  
end