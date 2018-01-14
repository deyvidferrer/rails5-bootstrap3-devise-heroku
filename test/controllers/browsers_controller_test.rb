require 'test_helper'

class BrowsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @browser = browsers(:one)
  end

  test "should get index" do
    get browsers_url
    assert_response :success
  end

  test "should get new" do
    get new_browser_url
    assert_response :success
  end

  test "should create browser" do
    assert_difference('Browser.count') do
      post browsers_url, params: { browser: { name: @browser.name } }
    end

    assert_redirected_to browser_url(Browser.last)
  end

  test "should show browser" do
    get browser_url(@browser)
    assert_response :success
  end

  test "should get edit" do
    get edit_browser_url(@browser)
    assert_response :success
  end

  test "should update browser" do
    patch browser_url(@browser), params: { browser: { name: @browser.name } }
    assert_redirected_to browser_url(@browser)
  end

  test "should destroy browser" do
    assert_difference('Browser.count', -1) do
      delete browser_url(@browser)
    end

    assert_redirected_to browsers_url
  end
end
