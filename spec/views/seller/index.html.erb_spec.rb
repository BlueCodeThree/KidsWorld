require 'rails_helper'

RSpec.describe "seller/index", type: :view do
  before(:each) do
 @user = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
    assign(:items, [
      Item.create!(seller_id: @user.id, title: "test", description: "test", price: 5),
      Item.create!(seller_id: @user.id, title: "test", description: "test", price: 5)
    ])
  end

  it "renders a list of items" do
    render
  end
end
