[3, 2, 1].sort

['apple', 'pear', 'banana'].sort



['apple', 'pear', 'banana'].sort {|a, b| a.length <=> b.length }


[3, 2, 1].select {|x| x < 2}

['apple', 'pear', 'banana'].select { |w| w.length <= 5 }