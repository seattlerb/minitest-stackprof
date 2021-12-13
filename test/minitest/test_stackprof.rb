require "minitest/autorun"
require "minitest/stackprof_plugin"

module TestMinitest; end

class TestMinitest::TestStackprof < Minitest::Test
  10.times do |n|
    define_method "test_wall_fast_#{n}" do
      assert true
    end
  end

  def test_wall_slow
    sleep 1
  end
end
