class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.string :nombre
      t.string :telefono
      t.string :direccion
      t.string :correo
      t.string :contacto

      t.timestamps
    end
  end
end
