class Upload < ActiveRecord::Base
  attr_accessible :file_name, :file_size
end
