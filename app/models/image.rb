class Image < ActiveRecord::Base
  validates :imagen, :attachment_presence => true
  belongs_to :tela
   has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/
end
