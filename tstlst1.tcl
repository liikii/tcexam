#! /usr/bin/tclsh
puts [list John Mary Bill]
puts [list John "Mary Smith" Bill " "]

# concat value1 value2 ...
puts [concat {a b c} {1 2 3}]
puts [concat {John Mary Bill} Tom Fred Sally]


set input {John Mary Bill}
puts [join $input ", "]


# join list delimiter
set input {{John Mary Bill} {Tom Fred Sally}}
puts [join $input]


# lappend variable value1 value2 ...
set input {John Mary Bill}
puts [lappend input Tom]


# lassign list variable1 variable2 ...
lassign {John Mary Bill Tom Fred} 1 2 3
puts "$1 $2 $3"

# lindex list index1 index2 ...
set input {John Mary Bill}

# linsert list index element1 element2 ...
set input {John Mary Bill}
set newinput [linsert $input 1 Tom]
puts $input
puts $newinput


# llength list
puts [llength {John Mary { Bill Tom }}]


# lrange list first last
puts [lrange {John Mary Bill Fred Tom Sally} 0 1]


# lrepeat number element1 element2 ...
puts [lrepeat 3 a]
puts [lrepeat 3 [lrepeat 3 0]]


# lreplace list first last element1 element2 ...
puts [lreplace {a b c d e} 1 1 X]
puts [lreplace {a b c d e} 1 2 X Z]



# lreverse list
puts [lreverse {a b c d e}]

