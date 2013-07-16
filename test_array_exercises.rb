# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in array_exercises.rb
require_relative 'array_exercises'

describe 'arrayify' do
    it "should turn input into arrays" do
        assert_equal [2], arrayify(2)
        assert_equal [[]], arrayify([])
    end
end

describe 'three_array' do
    it "should turn parameters into array" do
        assert_equal [4,5,6], three_array(4,5,6)
    end
end

describe 'first_and_last' do
    it "should return array with first and last elts" do
        assert_equal [3, 4], first_and_last([3, 2, 1, 4])
        assert_equal [3, 3], first_and_last([3])
    end
end

describe 'last_two' do
    it "should return the last two" do
        assert_equal [5,6], last_two([1,2,3,4,5,6])
    end
end


describe 'rotate1' do
    it "should rotate everythign by 1" do
        assert_equal [2,3,1], rotate1([1,2,3])
        assert_equal [1], rotate1([1])
    end
end

describe 'rotate2' do
    it "should rotate everything by 2" do
        assert_equal [3,1,2], rotate2([1,2,3])
        assert_equal [1], rotate2([1])
    end
end


describe 'even_or_bust' do
    it "should return even length arrays unscathed" do
        assert_equal ['cat', 'dog'], even_or_bust(['cat', 'dog'])
        assert_equal [1,2,3,4], even_or_bust([1,2,3,4])
    end
    it "should kill odd length arrays" do
        assert_equal [], even_or_bust(['a', 'b', 'c'])
        assert_equal [], even_or_bust([1])
    end
end


describe 'needle_haystack' do
    it "should find the needle" do
        assert_equal true, needle_haystack(['needle', 5])
        assert_equal true, needle_haystack(['cat', 3, 'needle', 5])
    end
    it "should not find no needle" do
        assert_equal false, needle_haystack([12,3,4])
    end
end


describe 'sum_of_largest_two' do
    it "should sum the largest two" do
        assert_equal 56, sum_of_largest_two([1,6, 5,4, 50])
    end
end


describe 'add_a_dog' do
    it "should add dog to the end" do
        assert_equal [1,2,'dog'], add_a_dog([1,2])
    end
end

describe 'underscorize' do
    it "should underscore a sentence" do
        assert_equal "this_is_underscored", underscorize("this is underscored")
    end
end

describe 'interleave' do
    it "should interleave two arrays" do
        assert_equal [1,'a', 2, 'b'], interleave([1,2], ['a', 'b'])