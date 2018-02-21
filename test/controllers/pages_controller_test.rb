require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get comunidad" do
    get pages_comunidad_url
    assert_response :success
  end

end
