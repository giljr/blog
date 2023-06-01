require 'test_helper'

class CategoryTest < ActiveSupport::TestCase 

    def setup
        @category = Category.new(name: "Sport")
    end


    test "category should be valid" do
        # @category = Category.new(name: "Sport")
        assert @category.valid?
    end
    # empty name do not pass the test
    test "name should be present" do
        @category.name = " "
        # @category = Category.new(name: " ")
        assert_not @category.valid?
    end

    test "name should be unique" do
        # first save to db
        @category.save 
        # now create another category w/ the same name- this should not pass 
        @category2= Category.new(name: "Sport")
        # then confirm that this object should not be valid 
        assert_not @category2.valid?
    end

    test "name should not be too long" do
        @category.name = "a"*26
        assert_not @category.valid?
    end

    test "name should not be too short" do
        @category.name = "aa"
        assert_not @category.valid?        
    end
    
end