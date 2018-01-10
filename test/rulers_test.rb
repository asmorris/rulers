require_relative 'test_helper'
require_relative "../lib/rulers/array"

class RulersTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rulers::VERSION
  end

  def app
    assert TestApp.new
  end

  def test_request
  	get "/"

  	assert last_response.ok?
  	body = last_response.body
  	assert body["Hello"]
  end

  def test_array
  	arr = [1, 2, 3, 4, 5]

  	assert arr.sum == 15

  end
end
