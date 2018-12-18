class Well < ActiveRecord::Base
  belongs_to :area
  belongs_to :field
  validates :name, :area, :field, presence: true
end
