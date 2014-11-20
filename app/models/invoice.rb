class Invoice < ActiveRecord::Base
  belongs_to :campaign
  attr_accessible :address, :price
end
