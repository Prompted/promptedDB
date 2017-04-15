require "HTTParty"
require 'pry'

resp = HTTParty.post("http://localhost:3000/auth",
    :query => { :email => "jtjordan16@gmail.com",
                :password => "hunter2",
                :password_confirmation => "hunter2",
                :confirm_success_url => 'http://localhost:3000'})

puts resp.code

binding.pry

resp2 = HTTParty.post("http://localhost:3000/auth/sign_in",
    :query => { :email => "jtjordan16@gmail.com",
                :password => "hunter2",
                :password_confirmation => "hunter2",
                :confirm_success_url => 'http://localhost:3000'})

binding.pry
