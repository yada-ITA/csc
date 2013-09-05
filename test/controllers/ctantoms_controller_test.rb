require 'test_helper'

class CtantomsControllerTest < ActionController::TestCase
  setup do
    @ctantom = ctantoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ctantoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ctantom" do
    assert_difference('Ctantom.count') do
      post :create, ctantom: { ctjmailmp1: @ctantom.ctjmailmp1, ctjmailmp2: @ctantom.ctjmailmp2, ctjmailmp3: @ctantom.ctjmailmp3, ctjmailofc1: @ctantom.ctjmailofc1, ctjmailofc2: @ctantom.ctjmailofc2, ctjmailofc3: @ctantom.ctjmailofc3, ctjname1: @ctantom.ctjname1, ctjname2: @ctantom.ctjname2, ctjname3: @ctantom.ctjname3, ctjuid1: @ctantom.ctjuid1, ctjuid2: @ctantom.ctjuid2, ctjuid3: @ctantom.ctjuid3, ctmailmp: @ctantom.ctmailmp, ctmailofc: @ctantom.ctmailofc, ctname: @ctantom.ctname, ctuid: @ctantom.ctuid }
    end

    assert_redirected_to ctantom_path(assigns(:ctantom))
  end

  test "should show ctantom" do
    get :show, id: @ctantom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ctantom
    assert_response :success
  end

  test "should update ctantom" do
    patch :update, id: @ctantom, ctantom: { ctjmailmp1: @ctantom.ctjmailmp1, ctjmailmp2: @ctantom.ctjmailmp2, ctjmailmp3: @ctantom.ctjmailmp3, ctjmailofc1: @ctantom.ctjmailofc1, ctjmailofc2: @ctantom.ctjmailofc2, ctjmailofc3: @ctantom.ctjmailofc3, ctjname1: @ctantom.ctjname1, ctjname2: @ctantom.ctjname2, ctjname3: @ctantom.ctjname3, ctjuid1: @ctantom.ctjuid1, ctjuid2: @ctantom.ctjuid2, ctjuid3: @ctantom.ctjuid3, ctmailmp: @ctantom.ctmailmp, ctmailofc: @ctantom.ctmailofc, ctname: @ctantom.ctname, ctuid: @ctantom.ctuid }
    assert_redirected_to ctantom_path(assigns(:ctantom))
  end

  test "should destroy ctantom" do
    assert_difference('Ctantom.count', -1) do
      delete :destroy, id: @ctantom
    end

    assert_redirected_to ctantoms_path
  end
end
