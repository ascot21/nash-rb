class CreateLogoEntries < ActiveRecord::Migration
  def change
    create_table :logo_entries do |t|

      t.timestamps
    end
  end
end
