require 'sqlite3'

db = SQLite3::Database.new("todolist.db")
db.results_as_hash = true

create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS list(
	list_id INTEGER PIRMARY KEY,
	task VARCHAR(255),
	start_time INT,
	complete VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)


def create_task(db, task, time, completed)
	db.execute("INSERT INTO list (task, start_time, complete) VALUES (?, ?, ?)", [task, time, completed])
end

puts "What task would you like to add?"
	task = gets.chomp
puts "What time does this task start?"
	start_time = gets.chomp.to_i
puts "Is this task completed (true/false)?"
	completed = gets.chomp

create_task(db, task, start_time, completed)

create_grocery_list = <<-SQL 
	CREATE TABLE IF NOT EXISTS grocery (
	grocery_list_id INTEGER PRIMARY KEY,
	food VARCHAR(255),
	quantity INT
	)
	SQL

db.execute(create_grocery_list)

def create_grocery(db, food, quantity)
	db.execute("INSERT INTO grocery (food, quantity) VALUES (?, ?)", [food, quantity])
end

puts "What item would you like to add to todays list?"
	food = gets.chomp
puts "What quantity of #{food}?"
	quantity = gets.chomp.to_i

create_grocery(db, food, quantity)


create_grocery_store = <<-SQL
	CREATE TABLE IF NOT EXISTS store (
	id INTEGER PRIMARY KEY,
	store_name VARCHAR(255),
	location VARCHAR(255),
	FOREIGN KEY (id) REFERENCES grocery(grocery_list_id)
	)
	SQL

	db.execute(create_grocery_store)

def create_grocery_store(db, store_name, location)
	db.execute("INSERT INTO store (store_name, location) VALUES (?, ?)", [store_name, location])
end

puts "What grocery store is this list for?"
		store_name = gets.chomp
puts "What is the store's location?"
		location = gets.chomp


create_grocery_store(db, store_name, location)

def display_tasks(db)
	task = db.execute("select * from list;")
		task.each do |task|
			puts "task: #{task['task']} starts at #{task['start_time']} and is: #{task['complete']}"
		end
end

display_tasks(db)

def display_grocery_to_list(db)
	grocery = db.execute("select * from grocery JOIN store ON store.id = grocery.grocery_list_id")
	grocery.each do |grocery|
		puts "Buy #{grocery['quantity']} of #{grocery['food']}"
	end
end

display_grocery_to_list(db)