class User < ApplicationRecord
  has_many :cvs, dependent: :destroy
  has_many :applications, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
