require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test 'responds to review attributes' do
    assert Lead.new.respond_to?   :user
    assert Lead.new.respond_to?   :stars
    assert Lead.new.respond_to?   :review
    assert Lead.new.respond_to?   :movie_id
  end
end
