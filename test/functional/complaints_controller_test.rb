require 'test_helper'

class ComplaintsControllerTest < ActionController::TestCase
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post :create, complaint: { bus_stop_name: @complaint.bus_stop_name, charged_and_allowed_other_complainant: @complaint.charged_and_allowed_other_complainant, charged_for_luggage: @complaint.charged_for_luggage, excess_charged: @complaint.excess_charged, fault_no_working_meter: @complaint.fault_no_working_meter, fly_destination: @complaint.fly_destination, from_to_fly: @complaint.from_to_fly, from_to_luggage: @complaint.from_to_luggage, indecent_behaviour: @complaint.indecent_behaviour, occurence_date_time: @complaint.occurence_date_time, other_complaints: @complaint.other_complaints, place_occurence: @complaint.place_occurence }
    end

    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should show complaint" do
    get :show, id: @complaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complaint
    assert_response :success
  end

  test "should update complaint" do
    put :update, id: @complaint, complaint: { bus_stop_name: @complaint.bus_stop_name, charged_and_allowed_other_complainant: @complaint.charged_and_allowed_other_complainant, charged_for_luggage: @complaint.charged_for_luggage, excess_charged: @complaint.excess_charged, fault_no_working_meter: @complaint.fault_no_working_meter, fly_destination: @complaint.fly_destination, from_to_fly: @complaint.from_to_fly, from_to_luggage: @complaint.from_to_luggage, indecent_behaviour: @complaint.indecent_behaviour, occurence_date_time: @complaint.occurence_date_time, other_complaints: @complaint.other_complaints, place_occurence: @complaint.place_occurence }
    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete :destroy, id: @complaint
    end

    assert_redirected_to complaints_path
  end
end
