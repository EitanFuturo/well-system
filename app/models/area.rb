class Area < ActiveRecord::Base
  belongs_to :business_unit
  has_many :wells
  has_many :articles
  validates :name, :business_unit, presence: true
end
