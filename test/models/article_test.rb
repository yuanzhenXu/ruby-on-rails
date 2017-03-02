require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save article without title" do
    article=Article.new

    assert_not article.save
  end
  # test "should report error" do
  #   # some_undefined_variable is not defined elsewhere in the test case
  #   some_undefined_variable
  #   assert true
  # end
  test "index should render correct template and layout" do
    get :index
    assert_template :index
    assert_template layout: "layouts/application"
  end
end
