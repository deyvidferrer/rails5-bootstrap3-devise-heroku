require 'test_helper'

class BugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bug = bugs(:one)
  end

  test "should get index" do
    get bugs_url
    assert_response :success
  end

  test "should get new" do
    get new_bug_url
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post bugs_url, params: { bug: { browser_id: @bug.browser_id, extra: @bug.extra, note: @bug.note, platform_id: @bug.platform_id, priority_id: @bug.priority_id, severity_id: @bug.severity_id, status_id: @bug.status_id, summary: @bug.summary, system_id: @bug.system_id, title: @bug.title, url_reference: @bug.url_reference, url_screenshot: @bug.url_screenshot, user_id: @bug.user_id } }
    end

    assert_redirected_to bug_url(Bug.last)
  end

  test "should show bug" do
    get bug_url(@bug)
    assert_response :success
  end

  test "should get edit" do
    get edit_bug_url(@bug)
    assert_response :success
  end

  test "should update bug" do
    patch bug_url(@bug), params: { bug: { browser_id: @bug.browser_id, extra: @bug.extra, note: @bug.note, platform_id: @bug.platform_id, priority_id: @bug.priority_id, severity_id: @bug.severity_id, status_id: @bug.status_id, summary: @bug.summary, system_id: @bug.system_id, title: @bug.title, url_reference: @bug.url_reference, url_screenshot: @bug.url_screenshot, user_id: @bug.user_id } }
    assert_redirected_to bug_url(@bug)
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete bug_url(@bug)
    end

    assert_redirected_to bugs_url
  end
end
