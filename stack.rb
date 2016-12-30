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
		if contents.size == 1
			to_be_returned = contents.get(0)
			contents.set(0, nil)
			to_be_returned
		else
			new_arr_size = (contents.size - 1)
			to_be_returned = contents.get(new_arr_size)
			new_arr = FixedArray.new(new_arr_size)
			i = 0
			new_arr_size.times do 
				new_arr.set(i, contents.get(i))
				i += 1
			end
			@contents = new_arr
			to_be_returned
		end
	end

	def top
		contents.get(contents.size - 1)
	end

	def empty?
		contents.size == 1 && contents.get(0) == nil
	end

	private

end
