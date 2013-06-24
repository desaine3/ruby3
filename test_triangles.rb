# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in triangles.rb
require_relative 'triangles'

# do the test
describe 'triangles' do
	it "draws a triangle of size 4" do
		output = <<EOT
*
**
***
****
EOT
		assert_output(output) do
			triangles(4)
		end
	end
end
