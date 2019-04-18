# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n + m), where n is the length of array1 and m is the length of array2.
# The first loop will run as long as the length of the larger array. The second loop will
# run as long as the length of the smaller array.
# Space complexity: O(n) where n is the length of the smaller array. If every value in the smaller
# array is also in the larger array, then the space the new "intersecting" array takes up will be
# equal to the size of the smaller array.

def intersection(array1, array2)
  if array1 == nil || array1 == [] || array2 == nil || array2 == []
    return []
  end

  if array1.length <= array2.length
    larger = array1
    smaller = array2
  else
    larger = array2
    smaller = array1
  end

  larger_values = {}
  larger.each do |num|
    larger_values[num] = 1
  end

  intersecting = []
  smaller.each do |value|
    if larger_values.include?(value)
      intersecting << value
    end
  end

  return intersecting
end
