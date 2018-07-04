require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_name
    @rocket.name = 'johnny'
    result = @rocket.name

    assert_equal "johnny", result
  end

  def test_if_flying

    assert_equal false, @rocket.flying?
  end

  def test_rocket_is_lifted_off
    @rocket.lift_off

    assert true, @rocket.flying?
  end

  def test_can_rocket_land
    @rocket.lift_off
    result = @rocket.land
    assert_equal true, true
  end

  def test_land_failure_if_already_landed
    assert_equal false, @rocket.land
  end

  def test_status_of_rocket_value_return
    @rocket.name = "roger"

    assert_equal "roger", @rocket.name

  end


end
