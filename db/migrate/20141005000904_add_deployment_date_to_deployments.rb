class AddDeploymentDateToDeployments < ActiveRecord::Migration
  def change
    add_column :deployments, :deployment_date, :date
  end
end
