# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
hospital = Hospital.instance
hospital.hospitals = Reservation.all
puts(hospital.hospitals)
run Rails.application
Rails.application.load_server
