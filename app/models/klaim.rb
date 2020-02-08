class Klaim < ApplicationRecord
  belongs_to :user
  belongs_to :benefit
  belongs_to :status
  mount_uploader :photo, ImagesUploader
end
