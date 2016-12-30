require_relative 'spec_helper'

describe Stack do
	let(:stack) { Stack.new }

	describe '#push:' do 

		it 'is initiated with a fixed array' do
			expect(stack.contents.class).to eq FixedArray
		end

		it 'adds an element when push method is called' do
			stack.push('new_element')
			stack.push('new_element2')
			expect(stack.contents.get(1)).to eq 'new_element2'
		end
	end

	context 'the stack has three elements' do

		before do 
			stack.push('new_element1')
			stack.push('new_element2')
			stack.push('new_element3')
		end 

		describe '#pop:' do 

			it 'decreases the size of the stack' do 
				stack.pop
				expect(stack.contents.size).to eq 2
			end

			it 'removes and returns the top element' do 
				expect(stack.pop).to eq 'new_element3'
			end		
		end

		describe '#top' do 

			it 'returns the last element' do 
				expect(stack.top).to eq 'new_element3'
			end
		end
	end

	describe '#empty?' do 

		it 'returns true if empty' do 
			expect(stack.empty?).to eq true
		end

		it 'returns false if not empty' do
			stack.push('some_element')
			expect(stack.empty?).to eq false
		end
	end
end
