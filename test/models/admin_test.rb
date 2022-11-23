require "test_helper"

class AdminTest < ActiveSupport::TestCase
  test "create" do
    admin = create :admin
    assert admin.persisted?
  end
  # test "the truth" do
  #   assert true
  # end
end
