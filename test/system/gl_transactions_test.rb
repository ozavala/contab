require "application_system_test_case"

class GlTransactionsTest < ApplicationSystemTestCase
  setup do
    @gl_transaction = gl_transactions(:one)
  end

  test "visiting the index" do
    visit gl_transactions_url
    assert_selector "h1", text: "Gl Transactions"
  end

  test "creating a Gl transaction" do
    visit gl_transactions_url
    click_on "New Gl Transaction"

    fill_in "Description", with: @gl_transaction.description
    fill_in "From party", with: @gl_transaction.from_party
    fill_in "To party", with: @gl_transaction.to_party
    fill_in "Transaction date", with: @gl_transaction.transaction_date
    fill_in "Transaction type", with: @gl_transaction.transaction_type_id
    click_on "Create Gl transaction"

    assert_text "Gl transaction was successfully created"
    click_on "Back"
  end

  test "updating a Gl transaction" do
    visit gl_transactions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @gl_transaction.description
    fill_in "From party", with: @gl_transaction.from_party
    fill_in "To party", with: @gl_transaction.to_party
    fill_in "Transaction date", with: @gl_transaction.transaction_date
    fill_in "Transaction type", with: @gl_transaction.transaction_type_id
    click_on "Update Gl transaction"

    assert_text "Gl transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Gl transaction" do
    visit gl_transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gl transaction was successfully destroyed"
  end
end
