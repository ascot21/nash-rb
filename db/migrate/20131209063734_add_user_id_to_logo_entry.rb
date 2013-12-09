class AddUserIdToLogoEntry < ActiveRecord::Migration
  def change
    add_column :logo_entries, :user_id, :integer
  end
end
