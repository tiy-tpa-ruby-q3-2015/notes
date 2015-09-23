def sql(statement, *values)
  p statement
  p values
end


sql("select * from users where users.id = ? and users.last_name = ?", 5, "Stark")
sql("select * from users where users.id = ?", 5)
