require 'test_helper'

class GlTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gl_transaction = gl_transactions(:one)
  end

  test "should get index" do
    get gl_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_gl_transaction_url
    assert_response :success
  end

  test "should create gl_transaction" do
    assert_difference('GlTransaction.count') do
      post gl_transactions_url, params: { gl_transaction: { description: @gl_transaction.description, from_party: @gl_transaction.from_party, to_party: @gl_transaction.to_party, transaction_category_id: @gl_transaction.transaction_category_id, transaction_date: @gl_transaction.transaction_date } }
    end

    assert_redirected_to gl_transaction_url(GlTransaction.last)
  end

  test "should show gl_transaction" do
    get gl_transaction_url(@gl_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_gl_transaction_url(@gl_transaction)
    assert_response :success
  end

  test "should update gl_transaction" do
    patch gl_transaction_url(@gl_transaction), params: { gl_transaction: { description: @gl_transaction.description, from_party: @gl_transaction.from_party, to_party: @gl_transaction.to_party, transaction_category_id: @gl_transaction.transaction_category_id, transaction_date: @gl_transaction.transaction_date } }
    assert_redirected_to gl_transaction_url(@gl_transaction)
  end

  test "should destroy gl_transaction" do
    assert_difference('GlTransaction.count', -1) do
      delete gl_transaction_url(@gl_transaction)
    end

    assert_redirected_to gl_transactions_url
  end
end
