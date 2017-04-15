require "HTTParty"

resp = HTTParty.post("http://prompted-db.herokuapp.com/auth",
    :query => { :email => "jtjordan13@gmail.com",
                :password => "hunter2",
                :password_confirmation => "hunter2"})

puts resp.code
