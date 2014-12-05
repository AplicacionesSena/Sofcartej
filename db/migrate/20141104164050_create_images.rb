class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :imagen
      t.references :tela, index: true

      t.timestamps
    end
  end
end
