require "application_system_test_case"

class AutomationpagesTest < ApplicationSystemTestCase
  setup do
    @automationpage = automationpages(:one)
  end

  test "visiting the index" do
    visit automationpages_url
    assert_selector "h1", text: "Automationpages"
  end

  test "should create automationpage" do
    visit automationpages_url
    click_on "New automationpage"

    fill_in "Link", with: @automationpage.link
    fill_in "Name", with: @automationpage.name
    click_on "Create Automationpage"

    assert_text "Automationpage was successfully created"
    click_on "Back"
  end

  test "should update Automationpage" do
    visit automationpage_url(@automationpage)
    click_on "Edit this automationpage", match: :first

    fill_in "Link", with: @automationpage.link
    fill_in "Name", with: @automationpage.name
    click_on "Update Automationpage"

    assert_text "Automationpage was successfully updated"
    click_on "Back"
  end

  test "should destroy Automationpage" do
    visit automationpage_url(@automationpage)
    click_on "Destroy this automationpage", match: :first

    assert_text "Automationpage was successfully destroyed"
  end
end
