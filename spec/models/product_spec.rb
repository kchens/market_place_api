require 'spec_helper'

describe Product do
  let(:product) { FactoryGirl.build :product }
  subject { product }

  it { should respond_to(:title) }
  it { should respond_to(:price) }
  it { should respond_to(:published) }
  it { should respond_to(:user_id) }

  # Doesn't work
  # it { should expect(product.published).to be false }
  specify { expect(product.published).to be false}

  it { should validate_presence_of :title }
  it { should validate_presence_of :price }
  it { should validate_presence_of :published }
  it { should validate_presence_of :user_id }

end
