[3, 2, 1].sort

['apple', 'banana', 'pear'].sort



['apple', 'banana', 'pear'].sort {|a, b| a.length <=> b.length }


[3, 2, 1].select {|x| x < 2}

['apple', 'banana', 'pear'].select { |w| w.length <= 5 }