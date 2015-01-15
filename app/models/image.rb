class Image < ActiveRecord::Base
  validates :imagen, :attachment_presence => true
  belongs_to :tela
   has_attached_file :imagen
  do_not_validate_attachment_file_type :imagen
end
