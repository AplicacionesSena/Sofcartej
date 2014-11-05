class Video < ActiveRecord::Base
  has_attached_file :vid
  do_not_validate_attachment_file_type :vid
end
