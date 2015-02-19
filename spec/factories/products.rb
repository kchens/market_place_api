FactoryGirl.define do
  factory :product do
    user

    title { Faker::Product.product_name }
    price { rand() * 100 }
    # changed from "false" as specified in the tutorial
    published true
  end
end
