class Articulo < ActiveRecord::Base
	has_attached_file :arti, :default_url => "/articulos"
  	do_not_validate_attachment_file_type :arti
end
