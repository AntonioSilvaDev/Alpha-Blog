require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new

    assert_not article.save
  end

  test "should not save an article with description < 10 chars" do
    article = Article.new
    article.description
    assert_equal(10,9, ["10 should equal 10 homie"])
  end
end