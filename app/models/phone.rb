class Phone < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :state, presence: true, inclusion: { in: ['Correct', 'Bon etat', 'Tres bon etat'] }
  validates :brand, presence: true, inclusion: { in: ['Apple', 'Samsung', 'Huawei', 'Xiaomi'] }
  validates :model, presence: true, inclusion: { in: ['Iphone X', 'Iphone 11', 'Iphone 12', 'Galaxy', 'Note', 'Star', 'P10', 'Iphone XR', 'Iphone 8', 'Iphone SE', 'Iphone 12 pro', 'Iphone XS max', 'P20', 'P30'] }
  validates :user, :start_dispo, :end_dispo, :model, :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
end
