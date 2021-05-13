require "test_helper"

class PeopleDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @people_detail = people_details(:one)
  end

  test "should get index" do
    get people_details_url
    assert_response :success
  end

  test "should get new" do
    get new_people_detail_url
    assert_response :success
  end

  test "should create people_detail" do
    assert_difference('PeopleDetail.count') do
      post people_details_url, params: { people_detail: { email: @people_detail.email, first_name: @people_detail.first_name, last_name: @people_detail.last_name, phone_number: @people_detail.phone_number } }
    end

    assert_redirected_to people_detail_url(PeopleDetail.last)
  end

  test "should show people_detail" do
    get people_detail_url(@people_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_people_detail_url(@people_detail)
    assert_response :success
  end

  test "should update people_detail" do
    patch people_detail_url(@people_detail), params: { people_detail: { email: @people_detail.email, first_name: @people_detail.first_name, last_name: @people_detail.last_name, phone_number: @people_detail.phone_number } }
    assert_redirected_to people_detail_url(@people_detail)
  end

  test "should destroy people_detail" do
    assert_difference('PeopleDetail.count', -1) do
      delete people_detail_url(@people_detail)
    end

    assert_redirected_to people_details_url
  end
end
