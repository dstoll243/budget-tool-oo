# Write out your user class and methods

class User
  attr_reader :username, :password

  @@all = []

  def initialize(username, password)
    @username = username
    @password = password
    @@all << self
  end

  def self.all
    @@all
  end

  def confirm_user
    "Hello, #{@username}"
  end
end