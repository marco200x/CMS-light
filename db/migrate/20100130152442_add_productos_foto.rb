class AddProductosFoto < ActiveRecord::Migration
  def self.up
    add_column :productos, :foto_file_name, :string
    add_column :productos, :foto_file_size, :integer
    add_column :productos, :foto_content_type, :string
  end

  def self.down
    remove_column :productos, :foto_file_name
    remove_column :productos, :foto_file_size
    remove_column :productos, :foto_content_type
  end
end
