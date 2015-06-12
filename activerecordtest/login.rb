
require 'active_record'
require 'mysql2' # or 'pg' or 'sqlite3'
require './inputuser'
require './activerecord'

# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
  adapter:  'mysql2', # or 'postgresql' or 'sqlite3'
  host:     'localhost',
  database: 'myapp_test',
  username: 'root',
  password: 'autocadne91'
)


class User< ActiveRecord::Base
#def nhap 
#puts "nhap Ten"
#$Ten= gets.chomp
#puts "nhap pass"
#$MK= gets.chomp
#end

def duyetuser
@duyet = User.find_by(username: $Ten, password: $MK)
puts @duyet.username
if @duyet.nil?
  puts "ten dang nhap sai"
else

  puts "thanh cong "
  tr = Track.new
  tr.trackall
end

end
end
us = User.new
i = Inputuser.new
i.nhapuser
us.duyetuser

