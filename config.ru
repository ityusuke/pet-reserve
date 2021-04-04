# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

constData = ConstData.instance
constData.pet_types = PetType.all
constData.hospitals = Hospital.all
constData.diseases = Disease.all

run Rails.application
Rails.application.load_server
