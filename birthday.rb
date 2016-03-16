require_relative 'fbconsole.rb'
require 'highline/import'

class Birthday < FbConsole 
  
  def initialize
    @account = Hash.new
    @account[:email] = ask("Enter your email:  ") { |q| q.echo = true }
    @account[:password] = ask("Enter your password:  ") { |q| q.echo = "*" }
    run
  end
  
  def run
    loop do
      login(@account[:email], @account[:password])
      wish_happy_birthdays get_birthdays
      close
      sleep 21600
    end
  end
  
end

Birthday.new