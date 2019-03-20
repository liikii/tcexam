#! /usr/bin/tclsh
# lsearch - See if a list contains a particular element
# SYNOPSIS
# DESCRIPTION

# MATCHING STYLE OPTIONS
    # -exact
    # -glob
    # -regexp
    # -sorted
# GENERAL MODIFIER OPTIONS
    # -all
    # -inline
    # -not
    # -start index
# CONTENTS DESCRIPTION OPTIONS
    # -ascii
    # -dictionary
    # -integer
    # -nocase
    # -real
# SORTED LIST OPTIONS
    # -decreasing
    # -increasing
# NESTED LIST OPTIONS
    # -index indexList
    # -subindices


puts [lsearch {a b c d e} c]
puts [lsearch -all {John Mary Bill John Mary Bill} Bill]
puts [lsearch -all {a b c a b c} c]
puts [lsearch -inline {a20 b35 c47} b*]
puts [lsearch -inline -not {a20 b35 c47} b*]
puts [lsearch -all -inline -not {a20 b35 c47} b*]
puts [lsearch -all -not {a20 b35 c47} b*]
puts [lsearch -all -inline -not -exact {a b c a d e a f g a} a]
puts [lsearch -start 3 {a b c a b c} c]
puts [lsearch -index 1 -all -inline {{a abc} {b bcd} {c cde}} *bc*]

