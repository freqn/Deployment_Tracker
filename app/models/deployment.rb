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

class Deployment < ActiveRecord::Base
end