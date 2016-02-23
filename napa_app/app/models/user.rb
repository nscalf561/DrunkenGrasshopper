class User < ActiveRecord::Base
	has_many :infos
	has_many :wines, through: :infos

  has_secure_password

  def self.confirm(params)
    @user = User.find_by({username: params[:username]})
    @user.try(:authenticate, params[:password])
  end

end
