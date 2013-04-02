s = "Peter Piper picked a peck of picked peppers"
s.scan(/[pP]\w*/) {|word| puts("The word is #{word}")}

