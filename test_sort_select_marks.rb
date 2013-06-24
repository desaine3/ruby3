# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in marks.rb
require_relative 'marks'

sorted_output = <<EOF
Debs got 92% and was awarded a grade a
Fiona got 72% and was awarded a grade b
Brian got 56% and was awarded a grade c
Cerys got 55% and was awarded a grade c
Eric got 41% and was awarded a grade c
Alex got 38% and was awarded a grade f
EOF

selected_output = <<EOF
Brian got 56% and was awarded a grade c
Cerys got 55% and was awarded a grade c
Debs got 92% and was awarded a grade a
Eric got 41% and was awarded a grade c
Fiona got 72% and was awarded a grade b
EOF


# do the test
describe 'display_sorted' do
	it 'displays the correct marks' do
		assert_output(sorted_output) do
			display_sorted
		end
	end
end

describe 'display_selected' do
	it 'displays only those who passed' do
		assert_output(selected_output) do
			display_selected
		end
	end
end