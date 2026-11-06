require "test_helper"

class LogementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logement = logements(:one)
  end

  test "should get index" do
    get logements_url
    assert_response :success
  end

  test "should get new" do
    get new_logement_url
    assert_response :success
  end

  test "should create logement" do
    assert_difference("Logement.count") do
      post logements_url, params: { logement: { pic: @logement.pic, title: @logement.title } }
    end

    assert_redirected_to logement_url(Logement.last)
  end

  test "should show logement" do
    get logement_url(@logement)
    assert_response :success
  end

  test "should get edit" do
    get edit_logement_url(@logement)
    assert_response :success
  end

  test "should update logement" do
    patch logement_url(@logement), params: { logement: { pic: @logement.pic, title: @logement.title } }
    assert_redirected_to logement_url(@logement)
  end

  test "should destroy logement" do
    assert_difference("Logement.count", -1) do
      delete logement_url(@logement)
    end

    assert_redirected_to logements_url
  end
end
