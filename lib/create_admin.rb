User.transaction do
  User.create( :username => 'admin', :email => 'admin@uneasychair.com', :password => 'changeme',
   :password_confirmation => 'changeme', :admin => true, :chairable => true)
end
