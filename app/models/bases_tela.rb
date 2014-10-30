class BasesTela < ActiveRecord::Base
  belongs_to :clasificacione
  has_many :telas
end
