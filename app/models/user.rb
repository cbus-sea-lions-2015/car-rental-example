class User < ActiveRecord::Base
  include BCrypt

  has_many :rentals
  has_many :cars, through: :rentals

  def password
    @password ||= Password.new(password_thingy)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_thingy = @password
  end

  def self.authenticate(username, password)
  	user = User.find_by(username: username)
  	user if user && user.password == password	
  end

end
