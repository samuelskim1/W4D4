require 'byebug'

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

def my_transpose(arr)
    raise ArgumentError unless arr.is_a?(Array)
    # debugger
    arr.each_with_index do |row, row_i|
        row.each_with_index do |col, col_i|
            temp = arr[row_i][col_i]
            arr[row_i][col_i] = arr[col_i][row_i]
            arr[col_i][row_i] = temp
        end
    end
end

# arr = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
# ]
# p my_transpose(arr)