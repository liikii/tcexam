set x 0
set n 11
for {set i 1} {$i < $n} {incr i} {
    append x , $i
}
puts "$x"
