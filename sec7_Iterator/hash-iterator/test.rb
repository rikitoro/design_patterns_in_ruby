h = {'name' => 'russ', 'eyes' => 'blue', 'sex' => 'male'}
h.each_key {|key| puts(key)}
h.each_value {|val| puts(val)}
h.each {|key, val| puts("#{key}: #{val}")}
