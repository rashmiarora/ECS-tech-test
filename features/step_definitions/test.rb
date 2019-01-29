Given("I visit the arrays challenge page") do
  visit('/')
  click_link_or_button('Render the Challenge')
end

Then("I should be able to find the index of the first array") do
  arr1 = Array.new
  row = (page.find_all(:xpath, '//table/tbody/tr')[0])
  row.find_all('td').each {|item|
    arr1 << item.text.to_i}
  p arr1
 left_equal_right(arr1)
end


Then("I should be able to find the index of the second array") do
  arr2 = Array.new
  row = (page.find_all(:xpath, '//table/tbody/tr')[1])
  row.find_all('td').each {|item|
    arr2 << item.text.to_i}
  p arr2
  left_equal_right(arr2)
end

Then("I should be able to find the index of the third array") do
  arr3 = Array.new
  row = (page.find_all(:xpath, '//table/tbody/tr')[2])
  row.find_all('td').each {|item|
    arr3 << item.text.to_i}
  p arr3
  left_equal_right(arr3)
end


#   second way of implementation
Then("I should be able to find the index") do
 table = page.find_all(:xpath, '//table/tbody/tr')
  table.each do |row|
   row_array = Array.new
    row.find_all('td').each do |cell|
      row_array << cell.text.to_i
   left_equal_right(row_array)
  end
  end
  end


# method to find the index
def left_equal_right(array)
  left = 0
  right = array.reduce(:+)
  array.each do |x|
    right -= x
    if left == right
      p array.index(x)
    end
    left += x
  end
end
