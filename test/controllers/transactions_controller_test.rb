require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transactions_index_url
    assert_response :success
  end

  test "should get edit" do
    get transactions_edit_url
    assert_response :success
  end

  test "should get list" do
    get transactions_list_url
    assert_response :success
  end

end
