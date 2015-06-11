class Users
	require 'mysql'

	def connect
		@db = Mysql.new('localhost', 'root', '2008', 'quanly')
	end

	def insert(table, arr)
		sql = "INSERT INTO #{table} VALUES("
		arr.each {|item|
			if item.integer? or item.float? then sql << "#{item}," 
			else sql << "'#{item}',"
			end
		}
		sql.chop!
		# sql = "INSERT INTO user VALUES(#{i},'#{name}',#{age},#{gender})"
		@db.query(sql)
	end

	def show(table)
		begin
			resultSet = @db.query("select * from #{table} where gender=1")
			resultSet.num_rows.times { puts resultSet.fetch_row.to_s}
		rescue Exception => e
			
		end
		
	end

	def disconnect
		@db.disconnect if @db
	end
end

u = Users.new
u.connect
u.show("user")

	# begin
	  

	#   i=0
	#   10.times do
	# 	  print "Nhap ten: "
	# 		name = gets.chomp
	# 		print "Nhap tuoi: "
	# 		age = gets.chomp.to_i
	# 		print "Nhap gioi tinh: "
	# 		gender = gets.chomp.to_i

			
			
	# 		i = i + 1
	# 	end
	# rescue Mysql::Error
	#   puts "Oh noes! We could not connect to our database. -_-;;"
	#   exit 1
	# ensure 
	# 	db.disconnect if db
	# end



# begin
 
    # n_rows = rs.num_rows
    
    # puts "There are #{n_rows} rows in the result set"
    
    # n_rows.times do
    #     puts rs.fetch_row.join("\s")
    # end  
# end