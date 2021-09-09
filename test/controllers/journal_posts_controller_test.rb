require "test_helper"

class JournalPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journal_post = journal_posts(:one)
  end

  test "should get index" do
    get journal_posts_url, as: :json
    assert_response :success
  end

  test "should create journal_post" do
    assert_difference('JournalPost.count') do
      post journal_posts_url, params: { journal_post: { content: @journal_post.content, date: @journal_post.date, title: @journal_post.title } }, as: :json
    end

    assert_response 201
  end

  test "should show journal_post" do
    get journal_post_url(@journal_post), as: :json
    assert_response :success
  end

  test "should update journal_post" do
    patch journal_post_url(@journal_post), params: { journal_post: { content: @journal_post.content, date: @journal_post.date, title: @journal_post.title } }, as: :json
    assert_response 200
  end

  test "should destroy journal_post" do
    assert_difference('JournalPost.count', -1) do
      delete journal_post_url(@journal_post), as: :json
    end

    assert_response 204
  end
end
