require "application_system_test_case"

class GanresTest < ApplicationSystemTestCase
  setup do
    @ganre = ganres(:one)
  end

  test "visiting the index" do
    visit ganres_url
    assert_selector "h1", text: "Ganres"
  end

  test "should create ganre" do
    visit ganres_url
    click_on "New ganre"

    click_on "Create Ganre"

    assert_text "Ganre was successfully created"
    click_on "Back"
  end

  test "should update Ganre" do
    visit ganre_url(@ganre)
    click_on "Edit this ganre", match: :first

    click_on "Update Ganre"

    assert_text "Ganre was successfully updated"
    click_on "Back"
  end

  test "should destroy Ganre" do
    visit ganre_url(@ganre)
    click_on "Destroy this ganre", match: :first

    assert_text "Ganre was successfully destroyed"
  end
end
