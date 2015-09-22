
- Structured versus unstructured data
- SQL as a language
- CREATE tables
- INSERT rows
- SELECT rows
- UPDATE rows
- DELETE rows
- Multiple tables
- JOIN

- SQL from code
  ```
  require "sqlite3"
  db = SQLLite3::Database.new("employee.db")
  rows = db.execute "select * from people"
  db.execute "select * from people".each do |row|
  end
  ```

- SQL Structure
  - http://www.dofactory.com/sql/tutorial
  - ^^ note, some of these might not work in SQLite3

- Visual demonstration of SQL (Ignore the "dummies" bit) - https://www.youtube.com/watch?v=VwxOgJ2A6sQ
