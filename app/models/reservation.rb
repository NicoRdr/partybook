class Reservation < ActiveRecord::Base
  belongs_to :soiree 
  has_many :users
end
