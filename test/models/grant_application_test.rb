require 'test_helper'

class GrantApplicationTest < ActiveSupport::TestCase
  should validate_presence_of(:amount)
  should validate_presence_of(:description)
  should validate_presence_of(:name)
  should validate_presence_of(:postcode)
end
