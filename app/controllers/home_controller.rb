class HomeController < ApplicationController
	before_action :require_login
  def index
  	@korans=Koran.all
  end
end
# mysql://bb1ce983552372:a024048d@us-cdbr-iron-east-03.cleardb.net/heroku_5d619fd724e1a8d?reconnect=true
# mysql -h us-cdbr-iron-east-03.cleardb.net -u bb1ce983552372 -p heroku_5d619fd724e1a8d < ngoran.sql 
# mysql --host=us-cdbr-iron-east-03.cleardb.net --user=bb1ce983552372 --password=heroku_5d619fd724e1a8d --reconnect heroku_5d619fd724e1a8d < ngoran.sql
# mysql --host=us-cdbr-iron-east-03.cleardb.net --user=bb1ce983552372 --password=heroku_5d619fd724e1a8d --reconnect heroku_5d619fd724e1a8d < my_dump_file.sql
