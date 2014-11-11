class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :rol

      t.timestamps
    end
  end
end
