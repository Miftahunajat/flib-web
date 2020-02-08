class User < ApplicationRecord
  validates :nama, :tanggal_masuk, :email, :password, presence: true
  belongs_to :pangkat
  has_many :user_benefits
  has_many :user_rewards
  has_many :rewards, through: :user_rewards
  has_many :benefits, through: :user_benefits

  def self.find_by_nama_password(nama, password)
    User.find_by(email: nama, password: password)
  end
end
