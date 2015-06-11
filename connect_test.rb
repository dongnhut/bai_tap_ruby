# require 'mysql'
# begin
#   db = Mysql.new('localhost', 'root', '2008', 'quanlysinhvien')
# rescue Mysql::Error
#   puts "Oh noes! We could not connect to our database. -_-;;"
#   exit 1
# end
# begin
#   rs = db.query("SELECT * FROM sinhvien")
#     n_rows = rs.num_rows
    
#     puts "There are #{n_rows} rows in the result set"
    
#     n_rows.times do
#         puts rs.fetch_row.join("\s")
#     end  
# end

require "dbi"

begin
     # connect to the MySQL server
     dbh = DBI.connect("DBI:Mysql:quanly:localhost", 
                      "root", "2008")
     # get server version string and display it
     row = dbh.select_one("SELECT VERSION()")
     puts "Server version: " + row[0]
rescue DBI::DatabaseError => e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
ensure
     # disconnect from server
     dbh.disconnect if dbh
end