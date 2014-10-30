class CreateReferenciasComerciales < ActiveRecord::Migration
  def change
    create_table :referencias_comerciales do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
