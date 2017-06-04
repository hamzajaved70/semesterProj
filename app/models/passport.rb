class Passport < ApplicationRecord
	belongs_to :user, optional: :true

	has_many :pappointment, dependent: :destroy

	validate :expiry 

	validates_uniqueness_of :user_id, allow_nil: false
	
	validates :full_name, :father_name, :nationality, :cnic, :dob, :gender, :permanent_address, :presence => true

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	has_attached_file :sign, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :sign, content_type: /\Aimage\/.*\z/

	scope :approved, -> {where(approved: true)}

	def expiry	
		if !date_of_expiry.nil?
			if date_of_expiry > (Date.today + 1.month)
				#rrors.add(:expiry_date, "is still more than 30 days away")
				return false
			else
				return true
			end				
		else
			return false
		end
	end
end
