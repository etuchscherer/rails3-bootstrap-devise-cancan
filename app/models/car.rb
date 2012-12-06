class Car < ActiveRecord::Base
  attr_accessible :name, :price, :purchased_on, :user_id, :year
  belongs_to :user
  has_many :maintenances

  def months_owned
    ((Date.today - self.purchased_on).to_f / 30.44).ceil
  end

  def monthly_maintenance_cost
    (self.maintenances.sum(:cost) / self.months_owned).ceil
  end
end
