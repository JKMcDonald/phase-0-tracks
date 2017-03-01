class TodoList

	def initialize(tasks)
		@tasks = tasks
	end

#getter 
# def items
# 	@tasks
# end

	def get_items
		@tasks
	end

	def add_item(item)
		@tasks.push(item)
	end

	def delete_item(item)
		@tasks.delete(item)
	end

	def get_item(index)
		@tasks[index]
	end
end

todays_work = TodoList.new(['clean', 'mop'])
p todays_work.get_items