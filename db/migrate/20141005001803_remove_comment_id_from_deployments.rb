class RemoveCommentIdFromDeployments < ActiveRecord::Migration
  def change
    remove_column :deployments, :comment_id
  end
end
