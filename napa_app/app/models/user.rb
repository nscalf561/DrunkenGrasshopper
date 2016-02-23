class User < ActiveRecord::Base
	
  has_secure_password

  # ensure emails are unique
  validates :email, uniqueness: true 

  def self.confirm(email_param, password_param)
    user = User.find_by_email(email_param)
    user.authenticate(password_param)
  end
end
