class Acabado < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true


  def self.ransackable_attributes(auth_object = nil)
    super - ['id', 'created_at', 'updated_at']
  end
end
