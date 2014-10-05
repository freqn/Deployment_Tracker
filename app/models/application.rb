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

class Application < ActiveRecord::Base

  belongs_to :user

end
