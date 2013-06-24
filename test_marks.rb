# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in marks.rb
require_relative 'marks'

output = <<EOF
Alex got 38% and was awarded a grade f
Brian got 56% and was awarded a grade c
Cerys got 55% and was awarded a grade c
Debs got 92% and was awarded a grade a
Eric got 41% and was awarded a grade c
Fiona got 72% and was awarded a grade b
EOF

# do the test
describe 'display_marks' do
	it 'displays the correct marks' do
		assert_output(output) do
			display_marks
		end
	end
end

