require 'test_helper'

class GlAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gl_account = gl_accounts(:one)
  end

  test "should get index" do
    get gl_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_gl_account_url
    assert_response :success
  end

  test "should create gl_account" do
    assert_difference('GlAccount.count') do
      post gl_accounts_url, params: { gl_account: { account_code: @gl_account.account_code, account_type_id: @gl_account.account_type_id, description: @gl_account.description, name: @gl_account.name } }
    end

    assert_redirected_to gl_account_url(GlAccount.last)
  end

  test "should show gl_account" do
    get gl_account_url(@gl_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_gl_account_url(@gl_account)
    assert_response :success
  end

  test "should update gl_account" do
    patch gl_account_url(@gl_account), params: { gl_account: { account_code: @gl_account.account_code, account_type_id: @gl_account.account_type_id, description: @gl_account.description, name: @gl_account.name } }
    assert_redirected_to gl_account_url(@gl_account)
  end

  test "should destroy gl_account" do
    assert_difference('GlAccount.count', -1) do
      delete gl_account_url(@gl_account)
    end

    assert_redirected_to gl_accounts_url
  end
end
