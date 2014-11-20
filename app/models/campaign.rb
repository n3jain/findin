class Campaign < ActiveRecord::Base
  has_many :comments
  has_many :invoices
  attr_accessible :description, :name
end
