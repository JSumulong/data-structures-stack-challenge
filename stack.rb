class Stack
	attr_reader :contents

	def initialize
		@contents = FixedArray.new(1)
	end

	def push(element)
		if contents.size == 1 && contents.get(0) == nil
			contents.set(0, element)
		else
			new_array_size = (contents.size + 1)
			new_arr = FixedArray.new(new_array_size)
			i = 0
			(new_array_size - 1).times do 
				new_arr.set(i, contents.get(i))
				i += 1
			end
			new_arr.set((i), element)
			@contents = new_arr
		end
	end

	def pop
	end

	def top
	end

	def empty?
	end

	private

end
