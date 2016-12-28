require_relative 'spec_helper'

describe Stack do
	let(:stack) { Stack.new }

	it 'is initiated with a fixed array' do
		expect(stack.contents.class).to eq FixedArray
	end

	it 'adds an element when push method is called' do
		stack.push('new_element')
		stack.push('new_element2')
		expect(stack.contents.get(1)).to eq 'new_element2'
	end


end
