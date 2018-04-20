require 'test_helper'

class WebSitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_site = web_sites(:one)
  end

  test "should get index" do
    get web_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_web_site_url
    assert_response :success
  end

  test "should create web_site" do
    assert_difference('WebSite.count') do
      post web_sites_url, params: { web_site: { content: @web_site.content } }
    end

    assert_redirected_to web_site_url(WebSite.last)
  end

  test "should show web_site" do
    get web_site_url(@web_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_site_url(@web_site)
    assert_response :success
  end

  test "should update web_site" do
    patch web_site_url(@web_site), params: { web_site: { content: @web_site.content } }
    assert_redirected_to web_site_url(@web_site)
  end

  test "should destroy web_site" do
    assert_difference('WebSite.count', -1) do
      delete web_site_url(@web_site)
    end

    assert_redirected_to web_sites_url
  end
end
