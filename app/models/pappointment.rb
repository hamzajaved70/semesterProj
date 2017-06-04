class Pappointment < ApplicationRecord
	belongs_to :user

	belongs_to :cnic, optional: :true

	belongs_to :license, optional: :true

	belongs_to :passport, optional: :true

	validates_uniqueness_of :time_slot, allow_nil: false

	def self.allot_pappointment
		result = Pappointment.first

		if result.nil?
			return DateTime.now.utc.beginning_of_day + 2.days + 8.hours
		else
			result = Pappointment.last
			if result.time_slot.strftime("%H:%M") == "16:55"
				return result.time_slot.utc.beginning_of_day + 1.days + 8.hours
			else
				return result.time_slot + 5.minutes
			end
		end	
	end


	#def self.remove_appointment
	#	result = Appointment.all
	#
	#	while !result.nil?
	#		if result.time_slot.past?
	#			Appointment.delete
	#		end
	#	end
	#end	
end
