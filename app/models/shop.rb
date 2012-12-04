class Shop < ActiveRecord::Base
  attr_accessible :city, :name, :state
  has_many :maintenances
end
