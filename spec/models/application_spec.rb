# == Schema Information
#
# Table name: applications
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

require 'rails_helper'

RSpec.describe Application, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
