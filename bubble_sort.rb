#A method that sorts an array using bubble sorting methodology
def bubble_sort(array)
  iterations = array.size - 1
  in_order = false
  until in_order
    in_order = true
    iterations.times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        in_order = false
      end
    end
    iterations -= 1
  end
  array
end