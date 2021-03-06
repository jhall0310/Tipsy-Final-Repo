class User < ApplicationRecord
  has_many :posts, dependent: :destroy
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    validates_uniqueness_of :username
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
    has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: 'http://i.imgur.com/2l9mUan.jpg'
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
