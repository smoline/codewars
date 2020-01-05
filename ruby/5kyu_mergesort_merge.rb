# https://www.codewars.com/kata/52336a4436e0b095d8000093/train/ruby

require 'ap'

=begin
In this excercise, we will implement the "merge" function from MergeSort.

MergeSort is often taught in Computer Science as the canonical example of the "Divide and Conquer" algorithm.
The strategy of MergeSort is both simple and profound, leveraging two simple-to-prove mathematical facts
(1. That every list of 1 element is "sorted" ... and 2. It is much easier to combine two already-sorted
lists into 1 sorted list than it is to sort a big list all at once) to yield an algorithm
with a worst-case complexity of O(n log n).

Basically, MergeSort works like this:

If we get a list of size 1, then it's already sorted: we're done. Just return that value.
Otherwise; break the list you have to sort in half: 2a. MergeSort the first half. 2b. MergeSort the second half. 2c.
"Merge" the two sorted lists for 2a and 2b together. Voila: sorted.
2c is where the MergeSort "merge" function comes in. It takes two already-sorted lists (arrays, in this example)
and returns one large sorted list.

The name of the function in this example is "mergesorted". It should return a big sorted array from two smaller sorted arrays: e.g.

mergesorted([1,2],[3,4]) //should: [1,2,3,4]

mergesorted([1,2],[3]) //should: [1,2,3]

mergesorted([1],[2, 3]) //should: [1,2,3]

class MergeSortAlgorithm
  # Break's the array down into two numbers (number A and number B) and sorts them.
  def sort(numbers)
    if numbers.size <= 1
      return numbers
    end

    array_size   = numbers.size
    half_of_size = (array_size / 2).round

    left_array  = numbers.take(half_of_size)
    right_array = numbers.drop(half_of_size)

    sorted_left_array = sort(left_array)
    sorted_right_array = sort(right_array)

    merge(sorted_left_array, sorted_right_array)
  end

  # This then creates a new array, loops through the left/right arrays and places the lowest number into the array.
  def merge(left_array, right_array)
    if right_array.empty?
      return left_array # We have nothing to compare. Left wins.
    end

    if left_array.empty?
      return right_array # We have nothing to compare. Right wins.
    end

    smallest_number = if left_array.first <= right_array.first
      left_array.shift
    else
      right_array.shift
    end

    # We keep doing it until the left or right array is empty.
    recursive = merge(left_array, right_array)

    # Okay, either left or right array are empty at this point. So we have a result.
    [smallest_number].concat(recursive)
  end
end

Let's give this a spin?
merge_sort = MergeSortAlgorithm.new
puts merge_sort.sort([4, 92, 1, 39, 19, 93, 49, 10].shuffle) # => [1, 4, 10, 19, 39, 49, 92, 93]

How it works
1. Let's say the input is [4, 92, 1, 39, 19, 93, 49, 10]
2. Break them down in halfs. So we now have [4, 92, 1, 39] and [19, 93, 49, 10]
3. Break them again in halfs. Let's start with the first. So now we have [4, 92] and [1, 39]
4. Break until there's only one item in each. So now we have [4] and [92]
5. Check which one is lower. So in this case, we know 4 is lower than 92. Let's rearrange it if necessary.
6. Now we have [4, 92] and we do the same for [1, 39]
7. We now create a new array. []
8. We check the first element on the left array versus the first element on the right array (i.e. 4 >= 9) and then add them to the new array.
9. Keep doing that until it's done.
=end

def merged(first, second)
  result = []

  while first.size > 0 && second.size > 0 do
    if first.first <= second.first
      samllest_number = first.shift
    else
      smallest_number = second.shift
    end
    result << smallest_number
  end

  return result.concat(first).concat(second)
end

ap merged([1],[1])
# [1, 1]

ap merged([1,2,3],[1,2,3])
# [1, 1, 2, 2, 3, 3]

ap merged([1,2,3],[4,5,6])
# [1,2,3,4,5,6]

ap merged([1,2,3],[4])
# [1, 2, 3, 4]

ap merged([4], [1,2,3])
# [1,2,3,4]
