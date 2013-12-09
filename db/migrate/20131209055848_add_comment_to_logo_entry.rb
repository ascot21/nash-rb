class AddCommentToLogoEntry < ActiveRecord::Migration
  def change
    add_column :logo_entries, :comment, :text
  end
end
