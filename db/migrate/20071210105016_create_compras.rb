class CreateCompras < ActiveRecord::Migration
  def self.up
    create_table :compras do |t|
      t.integer :usuario_id
      t.datetime :fecha
      t.decimal :total, :precision => 10, :scale => 2 # decimal con 8 enteros y 2 decimales

      t.timestamps
    end
  end

  def self.down
    drop_table :compras
  end
end
