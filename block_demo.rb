# basic block

['pizza', 'pasta'].each { |food| puts "I love #{food}" }



# each

[1,2,3].each do |number|
    puts "#{number} x 12 = #{number * 12}"
end


# map

[1,2,3].each {|n| 2 * n }

[1,2,3].map {|n| 2 * n }


# select

[3, 2, 1].select {|x| x < 2}


['apple', 'banana', 'pear'].select { |w| w.length <= 5 }


# sort

[3, 2, 1].sort


['apple', 'pear', 'banana'].sort


['apple', 'pear', 'banana'].sort do |a, b|
    if a.length > b.length
        1
    elsif a.length == b.length
        0
    else
        -1
    end
end



['apple', 'pear', 'banana'].sort { |a, b| a <=> b }