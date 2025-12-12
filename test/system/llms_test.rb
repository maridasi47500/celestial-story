require "application_system_test_case"

class LlmsTest < ApplicationSystemTestCase
  setup do
    @llm = llms(:one)
  end

  test "visiting the index" do
    visit llms_url
    assert_selector "h1", text: "Llms"
  end

  test "should create llm" do
    visit llms_url
    click_on "New llm"

    fill_in "Link", with: @llm.link
    fill_in "Llmpage", with: @llm.llmpage_id
    fill_in "Name", with: @llm.name
    click_on "Create Llm"

    assert_text "Llm was successfully created"
    click_on "Back"
  end

  test "should update Llm" do
    visit llm_url(@llm)
    click_on "Edit this llm", match: :first

    fill_in "Link", with: @llm.link
    fill_in "Llmpage", with: @llm.llmpage_id
    fill_in "Name", with: @llm.name
    click_on "Update Llm"

    assert_text "Llm was successfully updated"
    click_on "Back"
  end

  test "should destroy Llm" do
    visit llm_url(@llm)
    click_on "Destroy this llm", match: :first

    assert_text "Llm was successfully destroyed"
  end
end
