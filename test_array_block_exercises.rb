# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in array_block_exercises.rb
require_relative 'array_block_exercises'

describe 'print_elements' do
    it 'prints the elements' do
        output =<<EOF
a is an element
b is an element
EOF
        assert_output(output) {print_elements['a', 'b']}
    end
end

describe 'star_bars' do
    it "should draw bars of stars" do
        output=<<EOF
*
***
**
EOF
        assert_output(output) {star_bars([1,3,2])}
    end
    it "should return nil" do
        assert_equal nil, star_bars([2])
    end
end

describe 'sum' do
    it "should calculate the sum" do
        assert_equal 5, sum([1,2,2])
        assert_equal 5, sum([1,2,2,3,-3])
    end
end

describe 'square_the_values' do
    it "should return the values squared" do
        assert_equal [1, 4, 9], square_the_values([1,2,3])
    end
end

describe 'reflect' do
    it "should reflect a single word" do
        assert_equal "dog", reflect("god")
    end
    it "should not reverse the order of the words" do
        assert_equal "a b", reflect("a b")
    end
    it "should work on sentences" do
        assert_equal "hello tom day", reflect("olleh mot yad")
    end
end

describe 'big_numbers' do
    it "should select numbers over 100" do
        assert_equal [150, 270], big_numbers([1, 100, 150, 5, 270])
    end
end

describe 'sum_of_big_numbers' do
    it "should sum big numbers" do
        assert_equal 300, sum_of_big_numbers([100,150, 150, 70, 5])
    end
end

describe 'long words' do
    it "should filter out words shorter than n" do
        assert_equal "beautiful day", long_words("it is a beautiful day", 3)
        assert_equal "hello", long_words("hello tom", 5)
    end
end

describe 'interesting words' do
    it "should use the default words" do
        assert_equal ['cat'], interesting_words('a cat on the a')
    end
    it "should work with custom stop words" do
        assert_equal ['moon', 'pig'], interesting_words("moon tree pig", ['tree'])
    end
end


describe 'shortest_first' do
    it "should sort the shortest first" do
        assert_equal ['a', 'be', 'top', 'rabbit'],shortest_first(['be', 'a','rabbit', 'top'])
    end
end


describe 'biggest_number' do
    it "should return the biggest number" do
        assert_equal 99, biggest_number([1,2,99,4])
    end
end