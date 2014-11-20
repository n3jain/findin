class Comment < ActiveRecord::Base
  belongs_to :campaign
  attr_accessible :value
end
