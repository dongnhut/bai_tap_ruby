class Account < ActiveRecord::Base
 

validates :password, :presence => true
validates :password, :length => {:in =>5..200}



def password
    password_hash ? @password ||= BCrypt::Password.new(password_hash) : nil
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
def self.authenticate(name, password)
  account = Account.find_by_name(name)
  if account && account.password == password
    account
  else
    nil
  end
end
end
