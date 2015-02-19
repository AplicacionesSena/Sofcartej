class CreateColores < ActiveRecord::Migration
  def change
    create_table :colores do |t|
      t.integer :cantidadActual
      t.integer :entrada
      t.integer :salida
      t.references :tela, index: true

      t.timestamps
    end
  end
end
