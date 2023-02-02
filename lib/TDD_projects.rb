def my_uniq(arr)
  raise ArgumentError unless arr.is_a?(Array)
  count = Hash.new(0)
  arr.each { |ele| count[ele] += 1}
  count.keys
end

def two_sum(arr)
    raise ArgumentError unless arr.is_a?(Array)
    holder = []

    arr.each_with_index do |ele1, i1|
        arr.each_with_index do |ele2, i2| 
            holder << [i1,i2] if i1 < i2 && ele1 + ele2 == 0
        end
    end


    holder
end