class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  include ImageUploader[:avatar_image]

  has_many :services, dependent: :destroy
  has_one :portfolio, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :gears, dependent: :destroy
  has_many :products, dependent: :destroy
  has_rich_text :profile
end
