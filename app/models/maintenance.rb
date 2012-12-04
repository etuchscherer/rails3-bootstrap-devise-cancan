class Maintenance < ActiveRecord::Base
  attr_accessible :car_id, :cost, :shop_id, :work_id
  belongs_to :car
  belongs_to :work
  belongs_to :shop
end
