require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("shoes.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS shoes(
		id INTEGER PRIMARY KEY,
		style VARCHAR(255),
		color VARCHAR(255),
		size INT
	)
SQL

db.execute(create_table_cmd)

def add_shoes(db, style, color, size)
	db.execute("INSERT INTO shoes (style, color, size) VALUES (?, ?, ?)" [style, color, size])
end

50.times do
	add_shoes(db, FAKER::Name.name, 0)
end