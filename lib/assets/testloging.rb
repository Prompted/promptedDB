require "HTTParty"
require 'pry'

resp = HTTParty.post("http://Prompted-db.herokuapp.com/auth",
    :query => { :email => "jtjordan16@gmail.com",
                :password => "hunter2",
                :password_confirmation => "hunter2",
                :screen_name => "Tarqanian",
                :confirm_success_url => 'http://localhost:3000'})

puts resp.code

binding.pry

resp2 = HTTParty.post("http://Prompted-db.herokuapp.com/auth/sign_in",
    :query => { :email => "jtjordan16@gmail.com",
                :password => "hunter3",
                :password_confirmation => "hunter3",
                :confirm_success_url => 'http://localhost:3000'})

binding.pry
