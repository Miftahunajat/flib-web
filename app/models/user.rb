class User < ApplicationRecord
  validates :nama, :tanggal_masuk, :email, :password, presence: true
  belongs_to :pangkat

  def self.find_by_nama_password(nama, password)
    User.find_by(email: nama, password: password)
  end
end
