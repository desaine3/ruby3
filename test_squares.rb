# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in double.rb
require_relative 'squares'

# do the test
describe 'squares' do
	it "works for 5" do
		output = <<EOT
1
4
9
16
25
EOT
		assert_output(output) do
			display_squares(5)
		end
	end
end

