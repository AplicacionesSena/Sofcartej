class CreateTelas < ActiveRecord::Migration
  def change
    create_table :telas do |t|
      t.string :nombre
      t.references :tiposTela, index: true
      t.references :basesTela, index: true
      t.references :proveedore, index: true
      t.references :referenciasComerciale, index: true
      t.string :composicion
      t.string :anchoOrillo
      t.references :uso, index: true
      t.references :acabado, index: true
      t.string :peso
      t.string :pesoUnidad
      t.string :fichaTecnica
      t.string :datos
      t.string :tejido
      t.string :codigo
      t.string :nombrecomercial
      t.string :hilosxpulgada

      t.timestamps
    end
  end
end
