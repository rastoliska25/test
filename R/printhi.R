


print('hi')

print('hello')

library(DBI)
library(RMariaDB)

# local db (+ from docker)
# con <<- dbConnect(
#   RMariaDB::MariaDB(),
#   dbname = 'shop',
#   host = 'host.docker.internal',
#   port = 3306,
#   user = 'root',
#   password = 'password'
# )

con <<- dbConnect(
  RMariaDB::MariaDB(),
  dbname = 'shop',
  host = 'toyapidb.mysql.database.azure.com',
  port = 3306,
  user = 'rasto25',
  password = 'Test12345'
)

# create table and insert data
dbExecute(
  con,
  "CREATE TABLE IF NOT EXISTS toy_tables (Date DATETIME,Value DOUBLE,PRIMARY KEY(Date));"
)

# TODO return calculated data as response
dbReadTable(con, "toy_tables")


# test 255
