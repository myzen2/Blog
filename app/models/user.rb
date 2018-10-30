class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise    :registerable,
            :recoverable,
            :rememberable,
            :validatable,
            :database_authenticatable,   :authentication_keys => [:username]

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  has_many :posts
  has_one_attached :avatar

  def email_required?
    false
  end

  def email_changed?
    false
  end

  # use this instead of email_changed? for Rails = 5.1.x
  def will_save_change_to_email?
    false
  end
end
