require "test_helper"

class LlmpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @llmpage = llmpages(:one)
  end

  test "should get index" do
    get llmpages_url
    assert_response :success
  end

  test "should get new" do
    get new_llmpage_url
    assert_response :success
  end

  test "should create llmpage" do
    assert_difference("Llmpage.count") do
      post llmpages_url, params: { llmpage: { link: @llmpage.link, name: @llmpage.name } }
    end

    assert_redirected_to llmpage_url(Llmpage.last)
  end

  test "should show llmpage" do
    get llmpage_url(@llmpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_llmpage_url(@llmpage)
    assert_response :success
  end

  test "should update llmpage" do
    patch llmpage_url(@llmpage), params: { llmpage: { link: @llmpage.link, name: @llmpage.name } }
    assert_redirected_to llmpage_url(@llmpage)
  end

  test "should destroy llmpage" do
    assert_difference("Llmpage.count", -1) do
      delete llmpage_url(@llmpage)
    end

    assert_redirected_to llmpages_url
  end
end
