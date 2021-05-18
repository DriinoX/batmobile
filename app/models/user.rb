class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :gender, :address, :first_name, :last_name, :username, :phone_number, presence: true
  validates :phone_number, length: { minimum: 10 }
  validates :gender, presence: true, inclusion: { in: ['masculin', 'feminin'] }
end
