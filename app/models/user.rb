class User < ActiveRecord::Base

  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings#, :foreign_key => 'host_id'
  #has_many :trips, :foreign_key => 'guest_id'
  has_many :reviews, :foreign_key => 'guest_id'
  has_many :trips, :foreign_key => 'guest_id', :class_name => "Reservation"


  #Trip = []

  # def trips
  #   binding.pry
  #   #self.reservations
  #
  #   # Trips << self
  #   #[<Reservation id: 1, checkin: "2014-04-25", checkout: "2014-04-30", guest_id: 1, listing_id: 1, created_at: "2016-08-22 20:52:53", updated_at: "2016-08-22 20:52:53">]
  # end

end
