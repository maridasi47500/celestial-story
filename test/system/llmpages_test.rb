require "application_system_test_case"

class LlmpagesTest < ApplicationSystemTestCase
  setup do
    @llmpage = llmpages(:one)
  end

  test "visiting the index" do
    visit llmpages_url
    assert_selector "h1", text: "Llmpages"
  end

  test "should create llmpage" do
    visit llmpages_url
    click_on "New llmpage"

    fill_in "Link", with: @llmpage.link
    fill_in "Name", with: @llmpage.name
    click_on "Create Llmpage"

    assert_text "Llmpage was successfully created"
    click_on "Back"
  end

  test "should update Llmpage" do
    visit llmpage_url(@llmpage)
    click_on "Edit this llmpage", match: :first

    fill_in "Link", with: @llmpage.link
    fill_in "Name", with: @llmpage.name
    click_on "Update Llmpage"

    assert_text "Llmpage was successfully updated"
    click_on "Back"
  end

  test "should destroy Llmpage" do
    visit llmpage_url(@llmpage)
    click_on "Destroy this llmpage", match: :first

    assert_text "Llmpage was successfully destroyed"
  end
end
