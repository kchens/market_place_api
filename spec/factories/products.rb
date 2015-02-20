FactoryGirl.define do
  factory :product do
    title { Faker::Product.product_name }
    price { rand() * 100 }
    # changed from "false" as specified in the tutorial
    published true
    quantity 5
    user
  end
end
