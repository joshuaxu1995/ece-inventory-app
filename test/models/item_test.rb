require 'test_helper'

class UserTest < ActiveSupport::TestCase


  def setup
    @item = Item.create!(
      unique_name: "d",
      quantity: 51,
      model_number: 34221,
      description: "broken glass",
      tags: {
          tagarray: ["tag1", "tag2", "tag3"]
      },
      instances: {
          instancearray: ["instance1", "instance2", "instance3"]
      }
    )
  end
  # test "item should be unique" do
  #   duplicate_item = @item.dup
  #   #Testing for case insensitivity
  #   duplicate_item.unique_name = @item.unique_name.upcase
  #   @item.save
  #   assert_not duplicate_item.valid?
  # end

  # test "item should not be that long" do
  #   @item.unique_name = "q" * 51
  #   assert_not @item.valid?
  # end

  test "item quantity should not be negative" do
    @item.quantity = -51
    assert_not @item.valid?
  end


end
