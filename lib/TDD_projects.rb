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

    holder = Array.new(arr.length) {Array.new(arr.length)}

    arr.each_with_index do |row, row_i|
        row.each_with_index do |col, col_i|
            # temp = arr[row_i][col_i]
            holder[col_i][row_i] = arr[row_i][col_i]
            holder[row_i][col_i] = arr[col_i][row_i]
        end
    end

    holder
end

def stock_picker(stocks)
    pairs = []

    stocks.each_index do |i1|
        stocks.each_index do |i2|
            pairs << [i1, i2] if i1 < i2
        end
    end

    differences = pairs.sort_by{ |pair| stocks[pair[1]] - stocks[pair[0]] }
    differences[-1]
end