require 'bcrypt'


class User
  attr_reader :name, :password
  def initialize(name, password)
    @name = name
    @password = BCrypt::Password.create(password)
  end
end

@users = [
  {name: "j", password: "p"},
  {name: "j2", password: "p2"},
  {name: "j3", password: "p3"},
  {name: "j4", password: "p4"}
]

@test = @llusers.map do |u|
  User.new(u[:name], u[:password])
end



