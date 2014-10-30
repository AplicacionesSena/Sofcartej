class CreateAcabados < ActiveRecord::Migration
  def change
    create_table :acabados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
