class City < ApplicationRecord
  has_many :posts, dependent: :destroy

  has_attached_file :image, styles: { medium: '300x300>', large: '1024x400>', thumb: '100x100>' }, default_url: 'http://www.clipartkid.com/images/768/city-skyline-clip-art-item-4-vector-magz-free-download-vector-cIAVk5-clipart.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
