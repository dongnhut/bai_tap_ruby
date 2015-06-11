
require 'active_record'
require 'mysql2' # or 'pg' or 'sqlite3'

# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
  adapter:  'mysql2', # or 'postgresql' or 'sqlite3'
  host:     'localhost',
  database: 'ruby',
  username: 'root',
  password: '123456'
)

# Define your classes based on the database, as always
# class SomeClass < ActiveRecord::Base
#   #blah, blah, blah
# end
class User< ActiveRecord::Base
 
end
def kiemtra(i)
  if i==0
  puts "dang nhap k thanh cong"
  else
  puts "dang nhap thanh cong"
  end
end
# Now do stuff with it
# r=User.all
 # r.each do |k|
 #  puts k.email
# end
puts "nhap Ten"
$Ten= gets.chomp
puts "nhap pass"
$Pass= gets.chomp
i=0
r=User.all
r.each do |k|
  if k.email==$Ten && k.password_hash==$Pass
    i=i+1
  end
end
kiemtra(i)

# some_class = SomeClass.new