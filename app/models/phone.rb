class Phone < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :state, presence: true, inclusion: { in: ['Correct', 'Bon etat', 'Tres bon etat'] }
  validates :brand, presence: true, inclusion: { in: ['Apple', 'Samsung', 'Huawei', 'Xiaomi'] }
  validates :user, :start_dispo, :end_dispo, :model, :description, presence: true
  validates :price, presence: true
end
