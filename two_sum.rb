def bad_two_sum?(arr, target_sum)
  arr[0...-1].each do |num1|
    arr[1..-1].each do |num2|
      return true if num1 + num2 == target_sum
    end
  end
  false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6)

#n^2

def okay_two_sum?(arr, target_sum)
  arr.each do |i|
    target = target_sum - i
    return true if bsearch(arr, target)
  end
  false
end

def bsearch(arr, tarrrrget)
  return false if arr.empty?
  mid = arr.length/2
  return true if arr[mid] == tarrrrget
  if arr[mid] < tarrrrget
    bsearch(arr[mid+1..-1], tarrrrget)
  else
    #to the left to the left
    bsearch(arr[0...mid], tarrrrget)
  end
end

# nlogn

# p okay_two_sum?(arr, 6)

def two_sum?(arr, target)
  hash = Hash.new
  arr.each do |i|
    hash[i] = true
  end

  arr.each do |i|
    curr_tar = target - i
    return true if hash[curr_tar]
  end
  false
end

p two_sum?(arr, 6)
