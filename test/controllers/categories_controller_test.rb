require "test_helper"

# FUNCTIONAL TESTS: video 182

# RUN: rails generate test_unit:scafflod category 

# I ndex - new.html.erb   (FORM)
# N ew   - show.html.erb  (DETAIL)
# S how  - index.html.erb (LIST)
# C
# U
# D

class CategoriesControllerTest < ActionDispatch::IntegrationTest
setup do
    # instead of new, we want to hit the table. so use create method
    @category = Category.create(name: "Sports")
  end

  # We should successfully able to get that path: category
  test "should get index" do    
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end
  
  # if we not create @category, then we should not route it :/
  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_category_url(@category)
  #   assert_response :success
  # end

  # test "should update category" do
  #   patch category_url(@category), params: { category: {  } }
  #   assert_redirected_to category_url(@category)
  # end

  # test "should destroy category" do
  #   assert_difference("Category.count", -1) do
  #     delete category_url(@category)
  #   end

  #   assert_redirected_to categories_url
  # end

  # Latest video 184; When create a new category, count & redirect
  test "should create category" do
    assert_difference("Category.count") do
      post categories_url, params: { category: { name: "Travel" } }
    end
  
      assert_redirected_to category_url(Category.last)
    end
  
end
