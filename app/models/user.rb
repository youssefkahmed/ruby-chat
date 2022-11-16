class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :username, uniqueness: true, presence: true

  def get_avatar
    id = Digest::MD5::hexdigest(email).downcase
    "https://gravatar.com/avatar/#{id}.png"
  end
end
