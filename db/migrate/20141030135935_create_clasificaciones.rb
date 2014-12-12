class CreateClasificaciones < ActiveRecord::Migration
  def change
    create_table :clasificaciones do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :tiposTela_id

      t.timestamps
    end
  end
end
