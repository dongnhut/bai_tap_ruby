require 'rubygems'  
require 'active_record'  
ActiveRecord::Base.establish_connection(  
:adapter => "mysql2",  
:host => "127.0.0.1",  
:database => "rubysql"  
)  
  
class Rubyist < ActiveRecord::Base  
	
end  