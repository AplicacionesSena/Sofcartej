class CreateBasesTelas < ActiveRecord::Migration
  def change
    create_table :bases_telas do |t|
      t.references :clasificacione, index: true
      t.string :nombre

      t.timestamps
    end
  end
end
