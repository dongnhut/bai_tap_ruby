
class Database
	def initialize

	end 
	#def connect(db)
  		
	#	rescue Mysql::Error
  #		puts "Oh noes! We could not connect to our database. -_-;;"
  #			exit 1
  #		db
	#end
	def insert(db,username,email,password,gioitinh)
		 db.query("INSERT INTO user (username,email,password,gioitinh) VALUES ('#{username}','#{email}','#{password}','#{gioitinh}')")
	end
	
	def select(db)
		rs = db.query("SELECT * FROM user where gioitinh='nam'")
    	n_rows = rs.num_rows
    
    	puts "There are #{n_rows} rows in the result set"
    
    	n_rows.times do
        puts rs.fetch_row.join("\s")
        end
	end
	def selectsao(db)
		rs = db.query("SELECT * FROM user")
    	n_rows = rs.num_rows
    
    	puts "There are #{n_rows} rows in the result set"
    
   		 n_rows.times do
        puts rs.fetch_row.join("\s")
        end
	end
end 
require 'mysql'
require './input1'

i=Input.new

  	d=Database.new
    db = Mysql.new('localhost', 'root', 'autocadne91', 'myapp_test')
  
	# k=11
	#d.selectsao(db)
	2.times do
	i.nhap
    
    d.insert(db,$username,$email,$password,$gioitinh)
    # k=k+1
    end
    d.select(db)
    db.close

