class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.date :cumple
      t.string :login
      t.string :pass
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
