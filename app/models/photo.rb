class Photo < ApplicationRecord
  belongs_to :place_id
  belongs_to :user

  mount_uploader :picture, PictureUploader

end