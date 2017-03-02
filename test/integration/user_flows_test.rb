require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
 fixtures :articles

# test "login and browse site" do
# #   login via https
#
#   https!
#   get "/login"
#  assert_response :success
#
#   post_via_redirect "/login",username: users(:david).username,
#      password: users(:david).password
#   assert_equal 'welcome',path
#   assert_equal 'welcome david!',flash[:notice]
#   https!(false)
#   get "posts/all"
#   assert_response :success
#   assert_asssigns(:products)
#   end
end
