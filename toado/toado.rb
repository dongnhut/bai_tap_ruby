
class ToaDo
	def initialize

	end 
	#def connect(con)
  	
	#	rescue Mysql::Error
  #		puts "Oh noes! We could not connect to our database. -_-;;"
  #			exit 1
  #		con
	#end
	def insert(con,name,kinhdo,vido)
		 con.query("INSERT INTO toados (name,kinhdo,vido) VALUES ('#{name}','#{kinhdo}','#{vido}')")
	end
	
	
	def selectsao(con)
		rs = con.query("SELECT * FROM toados")
    	n_rows = rs.num_rows
    
    	puts "There are #{n_rows} rows in the result set"
    
   		 n_rows.times do
        puts rs.fetch_row.join("\s")
        end
	end
end 
require 'mysql'
require './inputtoado'

i=Inputtoado.new

  	d=ToaDo.new
    con = Mysql.new('localhost', 'root', 'autocadne91', 'myapp_test')
  	#d.connect
	# k=11
	#d.selectsao(db)
	
  	i.nhaptoado
    
    d.insert(con,$name,$kinhdo,$vido)
    # k=k+1
    
    d.selectsao(con)
    con.close

