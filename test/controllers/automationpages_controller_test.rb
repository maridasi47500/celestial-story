require "test_helper"

class AutomationpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automationpage = automationpages(:one)
  end

  test "should get index" do
    get automationpages_url
    assert_response :success
  end

  test "should get new" do
    get new_automationpage_url
    assert_response :success
  end

  test "should create automationpage" do
    assert_difference("Automationpage.count") do
      post automationpages_url, params: { automationpage: { link: @automationpage.link, name: @automationpage.name } }
    end

    assert_redirected_to automationpage_url(Automationpage.last)
  end

  test "should show automationpage" do
    get automationpage_url(@automationpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_automationpage_url(@automationpage)
    assert_response :success
  end

  test "should update automationpage" do
    patch automationpage_url(@automationpage), params: { automationpage: { link: @automationpage.link, name: @automationpage.name } }
    assert_redirected_to automationpage_url(@automationpage)
  end

  test "should destroy automationpage" do
    assert_difference("Automationpage.count", -1) do
      delete automationpage_url(@automationpage)
    end

    assert_redirected_to automationpages_url
  end
end
