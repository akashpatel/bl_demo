class Bucketlist < ActiveRecord::Base
  attr_accessible :title
  
  validates :title, :presence => true,
                    :length => {:minimum => 5}
end
