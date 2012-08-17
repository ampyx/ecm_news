require 'ffaker'

# This will guess the User class
FactoryGirl.define do
  factory :ecm_news_item, :class => 'Ecm::News::Item' do
    title Faker::Lorem.paragraph(1)
    body Faker::Lorem.paragraph(10)
  end
end
