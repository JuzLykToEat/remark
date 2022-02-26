require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  test 'responds to actor attributes' do
    assert Lead.new.respond_to?   :name
    assert Lead.new.respond_to?   :filming_location
    assert Lead.new.respond_to?   :country
    assert Lead.new.respond_to?   :movie_id
  end
end
