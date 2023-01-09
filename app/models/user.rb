class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks
  has_many :builds
  has_many :comments
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true, length: { maximum: 500 }
end
