class AddAttachmentImagenToImages < ActiveRecord::Migration
  def self.up
  	add_attachment :images, :imagen
    change_table :images do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :images, :imagen
  end
end
