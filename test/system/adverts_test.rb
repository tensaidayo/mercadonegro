require "application_system_test_case"

class AdvertsTest < ApplicationSystemTestCase
  setup do
    @advert = adverts(:one)
  end

  test "visiting the index" do
    visit adverts_url
    assert_selector "h1", text: "Adverts"
  end

  test "creating a Advert" do
    visit adverts_url
    click_on "New Advert"

    fill_in "Description", with: @advert.description
    fill_in "Price", with: @advert.price
    fill_in "Title", with: @advert.title
    click_on "Create Advert"

    assert_text "Advert was successfully created"
    click_on "Back"
  end

  test "updating a Advert" do
    visit adverts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @advert.description
    fill_in "Price", with: @advert.price
    fill_in "Title", with: @advert.title
    click_on "Update Advert"

    assert_text "Advert was successfully updated"
    click_on "Back"
  end

  test "destroying a Advert" do
    visit adverts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advert was successfully destroyed"
  end
end
