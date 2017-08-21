array = [32,54,765,4348]

def search_array(array, num)
  index = 0
  check = 0
  while index < array.length
    if array[index] == num
      check = 1
      p "The index of #{num} is #{index}"
    end
    index+=1
  end
  if check == 0
    p nil
    p "That number is not in the array"
  end
end

search_array(array, 111111)

def fib(num)
  array=[0,1]
  count=2
  fib=0
  index=2

  if num==1
      array.pop
  end
  # if num==2
  # end

  while count < num
    if num > 2
      fib = array[index-2]+array[index-1]
      array.push(fib)
      index=index+1
    end
    count+=1
  end
  p array
end
fib(1)
fib(2)
fib(3)
fib(4)
fib(5)
fib(6)
fib(100)

# Define the method.
def bubble_sort(arr)
  switched = true
  while switched
    switched = false
    # From index 0 to the last index -1, if the first index in a series of two is greater than the 2nd, switch those two indices.    
    (arr.length-1).times do |index|
      if arr[index] > arr[index+1]
        arr[index], arr[index+1] = arr[index+1], arr[index]
        switched = true
      end
    end    
  end
arr
end
# Fill in an array.
arr = [10, 3, 100, 2, 0]
# Print the result.
p bubble_sort(arr)

