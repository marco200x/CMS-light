class CreateConfiguracions < ActiveRecord::Migration
  def self.up
    create_table :configuracions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :configuracions
  end
end
