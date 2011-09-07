class Lesion < ActiveRecord::Base
  has_one :lesion_location
end
