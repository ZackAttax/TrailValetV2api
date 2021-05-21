require "test_helper"

class ValetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valet = valets(:one)
  end

  test "should get index" do
    get valets_url, as: :json
    assert_response :success
  end

  test "should create valet" do
    assert_difference('Valet.count') do
      post valets_url, params: { valet: { fixed: @valet.fixed, issue: @valet.issue, location: @valet.location, trail_id: @valet.trail_id } }, as: :json
    end

    assert_response 201
  end

  test "should show valet" do
    get valet_url(@valet), as: :json
    assert_response :success
  end

  test "should update valet" do
    patch valet_url(@valet), params: { valet: { fixed: @valet.fixed, issue: @valet.issue, location: @valet.location, trail_id: @valet.trail_id } }, as: :json
    assert_response 200
  end

  test "should destroy valet" do
    assert_difference('Valet.count', -1) do
      delete valet_url(@valet), as: :json
    end

    assert_response 204
  end
end
