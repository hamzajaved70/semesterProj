class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :cnic, dependent: :destroy

  has_one :license, dependent: :destroy

  has_one :passport, dependent: :destroy

  has_many :appointments

  belongs_to :role, optional: :true

  validates :first_name, :middle_name, :last_name, :father_name, :mobile, :b_form, :date_of_birth, :gender, :presence => true

  GENDER_OPTIONS = ["Male", "Female", "Khwajasara"]

  BLOOD_OPTIONS = ["A+", "A-","B+", "B-","AB+", "AB-","O+", "O-"]

  before_create :set_default_role  

  private


  def set_default_role  
    self.role ||= Role.find_by_name('user')  
  end


end
