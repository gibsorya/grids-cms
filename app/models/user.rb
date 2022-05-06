class User < ApplicationRecord
  # before_action :authenticate_user! 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  enum role: { :user => 0, :moderator => 1, :admin => 2 }
  after_initialize :set_default_role, :if => :new_record?

  def email_required?
    false
  end

  def email_changed?
    false
  end
  
  def set_default_role
    self.role ||= :user
  end
end
