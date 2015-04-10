class AddAttachmentImagenToImages < ActiveRecord::Migration
  def self.up
      add_column :images, :vid_file_name,    :string
      add_column :images, :vid_content_type, :string
      add_column :images, :vid_file_size,    :integer
      add_column :images, :vid_updated_at,   :datetime
    end
  
    def self.down
     remove_column :images, :vid_file_name
     remove_column :images, :vid_content_type
     remove_column :images, :vid_file_size
     remove_column :images, :vid_updated_at
   end
end
