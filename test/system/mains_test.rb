require "application_system_test_case"

class MainsTest < ApplicationSystemTestCase
  setup do
    @main = mains(:one)
  end

  test "visiting the index" do
    visit mains_url
    assert_selector "h1", text: "Mains"
  end

  test "creating a Main" do
    visit mains_url
    click_on "New Main"

    fill_in "File1", with: @main.file1
    fill_in "File2", with: @main.file2
    fill_in "File3", with: @main.file3
    fill_in "File4", with: @main.file4
    fill_in "Name", with: @main.name
    fill_in "Text", with: @main.text
    fill_in "Title", with: @main.title
    click_on "Create Main"

    assert_text "Main was successfully created"
    click_on "Back"
  end

  test "updating a Main" do
    visit mains_url
    click_on "Edit", match: :first

    fill_in "File1", with: @main.file1
    fill_in "File2", with: @main.file2
    fill_in "File3", with: @main.file3
    fill_in "File4", with: @main.file4
    fill_in "Name", with: @main.name
    fill_in "Text", with: @main.text
    fill_in "Title", with: @main.title
    click_on "Update Main"

    assert_text "Main was successfully updated"
    click_on "Back"
  end

  test "destroying a Main" do
    visit mains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main was successfully destroyed"
  end
end
