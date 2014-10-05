# == Schema Information
#
# Table name: deployments
#
#  id              :integer          not null, primary key
#  created_at      :datetime
#  updated_at      :datetime
#  name            :string(255)
#  application_id  :integer
#  deployment_date :date
#

require 'rails_helper'

RSpec.describe Deployment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
