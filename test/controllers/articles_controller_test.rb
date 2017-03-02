require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end
  test "should create article" do

    assert_difference('Article.count') do
     article :create, article: {title: 'Some title',text:'This is my first article'}
    end

    assert_redirected_to article_path(assigns(:article))
    assert_equal 'Article was successfully created.', flash[:notice]
  end
end
