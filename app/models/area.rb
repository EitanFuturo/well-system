class Area < ActiveRecord::Base
  belongs_to :business_unit
  has_many :wells
  validates :name, :business_unit, presence: true
end
