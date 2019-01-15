class CLI
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def welcome
    puts "cli test"
  end
end
