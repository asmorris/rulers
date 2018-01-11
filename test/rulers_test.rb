require_relative 'test_helper'
require_relative "../lib/rulers/array"

class TestController < Rulers::Controller
  def index
    "Hello" # Not rendering a view
  end
end

class TestApp < Rulers::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class RulersTest < Minitest::Test

  include Rack::Test::Methods

  def test_that_it_has_a_version_number
    refute_nil ::Rulers::VERSION
  end

  def app
    assert TestApp.new
  end

  def test_request
  	get "/example/route"

  	assert last_response.ok?
  	body = last_response.body
  	assert body["Hello"]
  end

  def test_array
  	arr = [1, 2, 3, 4, 5]

  	assert arr.sum == 15

  end

end
