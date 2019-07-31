require "application_system_test_case"

class GlAccountsTest < ApplicationSystemTestCase
  setup do
    @gl_account = gl_accounts(:one)
  end

  test "visiting the index" do
    visit gl_accounts_url
    assert_selector "h1", text: "Gl Accounts"
  end

  test "creating a Gl account" do
    visit gl_accounts_url
    click_on "New Gl Account"

    fill_in "Account code", with: @gl_account.account_code
    fill_in "Account type", with: @gl_account.account_type_id
    fill_in "Description", with: @gl_account.description
    fill_in "Name", with: @gl_account.name
    fill_in "Parent code", with: @gl_account.parent_code
    click_on "Create Gl account"

    assert_text "Gl account was successfully created"
    click_on "Back"
  end

  test "updating a Gl account" do
    visit gl_accounts_url
    click_on "Edit", match: :first

    fill_in "Account code", with: @gl_account.account_code
    fill_in "Account type", with: @gl_account.account_type_id
    fill_in "Description", with: @gl_account.description
    fill_in "Name", with: @gl_account.name
    fill_in "Parent code", with: @gl_account.parent_code
    click_on "Update Gl account"

    assert_text "Gl account was successfully updated"
    click_on "Back"
  end

  test "destroying a Gl account" do
    visit gl_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gl account was successfully destroyed"
  end
end
