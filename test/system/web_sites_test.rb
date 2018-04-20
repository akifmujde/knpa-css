require "application_system_test_case"

class WebSitesTest < ApplicationSystemTestCase
  setup do
    @web_site = web_sites(:one)
  end

  test "visiting the index" do
    visit web_sites_url
    assert_selector "h1", text: "Web Sites"
  end

  test "creating a Web site" do
    visit web_sites_url
    click_on "New Web Site"

    fill_in "Content", with: @web_site.content
    click_on "Create Web site"

    assert_text "Web site was successfully created"
    click_on "Back"
  end

  test "updating a Web site" do
    visit web_sites_url
    click_on "Edit", match: :first

    fill_in "Content", with: @web_site.content
    click_on "Update Web site"

    assert_text "Web site was successfully updated"
    click_on "Back"
  end

  test "destroying a Web site" do
    visit web_sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web site was successfully destroyed"
  end
end
