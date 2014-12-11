class TiposTela < ActiveRecord::Base
	has_many :telas
	has_many :clasificaciones

  def self.ransackable_attributes(auth_object = nil)
    super - ['id', 'created_at', 'updated_at']
  end
end
