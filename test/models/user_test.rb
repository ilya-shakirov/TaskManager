require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "create" do
    user = create :user
    assert user.persisted?
  end
  # test "the truth" do
  #   assert true
  # end
end
