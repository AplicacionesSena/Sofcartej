class CreateTiposTelas < ActiveRecord::Migration
  def change
    create_table :tipos_telas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
