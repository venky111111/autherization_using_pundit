class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :user_type,:username, :email, :password, :password_confirmation, presence: true
  def is_admin?
    self.user_type == 'admin'
  end   
  
  def is_user?
    self.user_type == 'user'
  end
end
