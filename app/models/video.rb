class Video < ActiveRecord::Base
	validates :vid, presence: true
	validates :titulo, presence: true
  has_attached_file :vid
  do_not_validate_attachment_file_type :vid

  	def self.search(search, page)
		where(['upper(titulo) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 2).order("id")
	end
end
