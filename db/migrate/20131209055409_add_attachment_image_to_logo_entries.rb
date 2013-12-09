class AddAttachmentImageToLogoEntries < ActiveRecord::Migration
  def self.up
    change_table :logo_entries do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :logo_entries, :image
  end
end
