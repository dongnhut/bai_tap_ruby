require 'C:\Users\duy\Desktop\New folder (2)\Input.rb'
require 'C:\Users\duy\Desktop\New folder (2)\users.rb'
class Myuser
def initialize
	
end
def nhap
   puts "Nhap vao ten"
   $username = gets.chomp
   puts "Nhap vao tuoi"
   $age = gets.chomp
   puts "Nhap vao gioi tinh"
   $sex = gets.chomp
  end
 def insert(db,username,age,sex)
	rs = db.query("INSERT INTO user VALUES('','#{$username}','#{$age}','#{$sex}')")
 end
 def showsex(db, sex)
	rs = db.query("SELECT * FROM user WHERE sex='#{$sex}'")
  
    n_rows = rs.num_rows   
    puts "Co #{n_rows} #{$sex} trong dtb"
    
    n_rows.times do
        puts rs.fetch_row.join("\s")
 end
 end
end
require 'mysql'
db = Mysql.new('127.0.0.1', 'root', '', 'rubysql')
u = Myuser.new
$dem=0
i=Input.new
1.times do 
i.nhapuser
u.insert(db, $username, $age, $sex)
end
$sex = "Nu"
u.showsex(db, $sex)
$sex = "Nam"
u.showsex(db, $sex)
puts "Nhap ten dang nhap"
$login = gets.chomp
$rubyistss = Rubyists.All
$logger = rubyistss.Find(param[:$login])
if logger
	puts "Ban da dang nhap"
end
db.close