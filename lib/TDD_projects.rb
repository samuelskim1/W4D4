def my_uniq(arr)
  raise ArgumentError if !arr.is_a?(Array)
  count = Hash.new(0)
  arr.each { |ele| count[ele] += 1}
  count.keys
end