require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test 'home route' do
    assert_routing '/', :controller => 'home', :action => 'index'
  end

  test 'index' do
    get :index
    assert_response :ok
  end
end
