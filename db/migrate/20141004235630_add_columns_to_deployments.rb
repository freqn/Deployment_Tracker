class AddColumnsToDeployments < ActiveRecord::Migration
  def change
    add_column :deployments, :name, :string
    add_column :deployments, :application_id, :integer
    
  end
end
