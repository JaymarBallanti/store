require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { barcode: @sale.barcode, cost_price: @sale.cost_price, customer_name: @sale.customer_name, date_delivered: @sale.date_delivered, date_of_expiry: @sale.date_of_expiry, date_sold: @sale.date_sold, description: @sale.description, item_name: @sale.item_name, quantity: @sale.quantity, retail_price: @sale.retail_price, sales_person: @sale.sales_person }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    patch :update, id: @sale, sale: { barcode: @sale.barcode, cost_price: @sale.cost_price, customer_name: @sale.customer_name, date_delivered: @sale.date_delivered, date_of_expiry: @sale.date_of_expiry, date_sold: @sale.date_sold, description: @sale.description, item_name: @sale.item_name, quantity: @sale.quantity, retail_price: @sale.retail_price, sales_person: @sale.sales_person }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
