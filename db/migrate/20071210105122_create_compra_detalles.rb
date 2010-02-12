class CreateCompraDetalles < ActiveRecord::Migration
  def self.up
    create_table :compra_detalles do |t|
      t.integer :compra_id
      t.integer :producto_id
      t.integer :cantidad
      t.decimal :precio, :presicion => 10, :scale => 2 # 8 enteros 2 decimales


      t.timestamps
    end
  end

  def self.down
    drop_table :compra_detalles
  end
end
