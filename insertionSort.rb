# Insertion Sort ************************
# Insertion Sort -> A popular quadratic sorting algorithm with O(n^2) complexity
def insertionSort(arr)
  for size in 2..arr.length
      # Remember, this is a zero-start array
      element = arr[size-1]

      # Bring this element down to its appropriate position
      # elements[0] ... elemets[size-2] are already in a sorted order
      index = size - 2
      while(index >= 0) && (element < arr[index])
          arr[index + 1] = arr[index]
          index-=1
      end
      arr[index+1] = element
  end
end

puts "Original Array :"
original_array=[2,19,5,4,3,14,2]
p original_array
puts "Sorted Array Using Insertion Sort:"
insertionSort(original_array)
p original_array

=begin
Sample Output :
puts "Original Array :"
original_array=[2,19,5,4,3,14,2]
p original_array
puts "Sorted Array Using Insertion Sort:"
insertionSort(original_array)
p original_array
=end