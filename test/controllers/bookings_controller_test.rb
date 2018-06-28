require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { address: @booking.address, bill: @booking.bill, check_in: @booking.check_in, check_out: @booking.check_out, cnic: @booking.cnic, discount: @booking.discount, email: @booking.email, name: @booking.name, other_charges: @booking.other_charges, phone: @booking.phone, sub_total: @booking.sub_total, total: @booking.total } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { address: @booking.address, bill: @booking.bill, check_in: @booking.check_in, check_out: @booking.check_out, cnic: @booking.cnic, discount: @booking.discount, email: @booking.email, name: @booking.name, other_charges: @booking.other_charges, phone: @booking.phone, sub_total: @booking.sub_total, total: @booking.total } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
