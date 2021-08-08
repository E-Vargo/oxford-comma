def oxford_comma(array)
    if array.size == 1
        array.join
    elsif array.size == 2
        array.insert(1, "and").join(" ")
    elsif array.size >= 3
        new = array.collect {|x| x + ","} 
        new.pop
        new << "and #{array[-1]}"
        new.join(" ")
    end
end