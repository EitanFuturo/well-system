class BusinessUnit < ActiveRecord::Base
  has_many :areas
  validates :name, presence: true
end
