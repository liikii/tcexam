#! /usr/bin/tclsh
# lsort ?options? list
# -ascii
#       Use string comparison with Unicode code-point collation order (the name is for backward-compatibility reasons.) This is the default.
# -dictionary
#       Use dictionary-style comparison. This is the same as -ascii except (a) case is ignored except as a tie-breaker and (b) if two strings contain embedded numbers, the numbers compare as integers, not characters. For example, in -dictionary mode, bigBoy sorts between bigbang and bigboy, and x10y sorts between x9y and x11y.
# -integer
#       Convert list elements to integers and use integer comparison.
# -real
#       Convert list elements to floating-point values and use floating comparison.
# -command command
#       Use command as a comparison command. To compare two elements, evaluate a Tcl script consisting of command with the two elements appended as additional arguments. The script should return an integer less than, equal to, or greater than zero if the first element is to be considered less than, equal to, or greater than the second, respectively.
# -increasing
#       Sort the list in increasing order (“smallest”items first). This is the default.
# -decreasing
#       Sort the list in decreasing order (“largest”items first).
# -indices
#       Return a list of indices into list in sorted order instead of the values themselves.
# -index indexList
#       If this option is specified, each of the elements of list must itself be a proper Tcl sublist. Instead of sorting based on whole sublists, lsort will extract the indexList'th element from each sublist (as if the overall element and the indexList were passed to lindex) and sort based on the given element. For example,
# -nocase
#       Causes comparisons to be handled in a case-insensitive manner. Has no effect if combined with the -dictionary, -integer, or -real options.
# -unique
#       If this option is specified, then only the last set of duplicate elements found in the list will be retained. Note that duplicates are determined relative to the comparison used in the sort. Thus if -index 0 is used, {1 a} and {1 b} would be considered duplicates and only the second element, {1 b}, would be retained.


puts [lsort -integer -index 1 { {First 24} {Second 18} {Third 30}}]
puts [lsort -index end-1 { {a 1 e i} {b 2 3 f g} {c 4 5 6 a h}}]
puts [lsort -index {0 2} {
   {{b i g} 12345}
   {{d e m o} 34512}
   {{c o d e} 54321}
}]

puts [lsort -dictionary {a10 B2 b1 a1 a2}]
puts [lsort -real {5 3 1 2 11 4}]
puts [lsort -real {.5 0.07e1 0.4 6e-1}]

puts [lsort {{a 5} { c 3} {b 4} {e 1} {d 2}}]
puts [lsort -index 0 {{a 5} { c 3} {b 4} {e 1} {d 2}}]
puts [lsort -index 1 {{a 5} { c 3} {b 4} {e 1} {d 2}}]

puts [lsort -unique {a b c a b c a b c}]

puts [lsort -decreasing {a b c d e}]

puts [split {John,Mary,Tom,Fred,Sally} , ]