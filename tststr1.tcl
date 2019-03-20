#! /usr/bin/tclsh
# string compare ?-nocase? ?-length int? string1 string2
# string equal ?-nocase? ?-length int? string1 string2
# string first needleString haystackString ?startIndex?
# string index string charIndex
#         integer
#         end
#         end-N
#         end+N
#         M+N
#         M-N
# string is class ?-strict? ?-failindex varname? string
#             alnum
#             alpha
#             ascii
#             boolean
#             control
#             digit
#             double
#             false
#             graph
#             integer
#             list
#             lower
#             print
#             punct
#             space
#             true
#             upper
#             wideinteger
#             wordchar
#             xdigit
# string last needleString haystackString ?lastIndex?
# string length string
# string map ?-nocase? mapping string
# string match ?-nocase? pattern string
#                         *
#                         ?
#                         [chars]
#                         \x
# string range string first last
# string repeat string count
# string replace string first last ?newstring?
# string reverse string
# string tolower string ?first? ?last?
# string totitle string ?first? ?last?
# string toupper string ?first? ?last?
# string trim string ?chars?
# string trimleft string ?chars?
# string trimright string ?chars?
# OBSOLETE SUBCOMMANDS
# string bytelength string
# string wordend string charIndex
# string wordstart string charIndex

# set x 0
# set n 11
# for {set i 1} {$i < $n} {incr i} {
#     append x , $i
# }
# puts "$x"

# compare
# Returns -1, 0, or 1, depending on whether string1 is lexicographically less than, equal to, or greater than string2. 
puts "-----> compare"
set string1 compare
set string2 [lindex $argv 0]
set output [string compare $string1 $string2]
puts $output

# equal
# string equal –nocase –length int string1 string2
# Returns 1 if string1 and string2 are identical, or 0 when not.
puts "-----> equal"
puts [string equal Monday Monday]

# first 
# string first needleString haystackString ?startIndex?
puts "-----> first"
puts [string first a 0a23456789abcdef 5]
puts [string first a 0a23456789abcdef 11]

# index 
# string index string index
puts "-----> index"
puts [string index abcde 3]
puts [string index abcde end]
puts [string index abcde end-1]
puts [string index abcde end+1]
puts [string index abcde 1+1]


# is class
# string is class –strict –failindex variable string
puts "-----> is class"
puts [string is digit a]
puts [string is digit 1]


puts "-----> last"
puts [string last abc abcabcabc]
puts "-----> length"
puts [string length abcabcabc]

# string map ?-nocase? mapping string
puts "-----> map"
puts [string map {abc 1 ab 2 a 3 1 0} 1abcaababcabababc]
puts [string map {1 0 ab 2 a 3 abc 1} 1abcaababcabababc]

# string match ?-nocase? pattern string
#                         *
#                         ?
#                         [chars]
#                         \x
puts "-----> match"
puts [string match a??12? abc123]
puts [string match a??12? eee123]


# string range string first last
puts "-----> range"
puts [string range abcdefg 2 4]

# string repeat string count
puts "-----> repeat"
puts [string repeat ab 5]

# string replace string first last ?newstring?
puts "-----> replace"
puts [string replace abcdefg 2 5 123456789]

# string reverse string
puts "-----> reverse"
puts [string reverse abcd]

# string tolower string ?first? ?last?
puts "-----> tolower"
puts [string tolower "NOW IS THE TIME"]

# string totitle string ?first? ?last?
puts "-----> totitle"
puts [string totitle "NOW IS THE TIME"]

# string toupper string ?first? ?last?
puts "-----> toupper"
puts [string toupper "now is the time"]

# string trim string ?chars?
puts "-----> trim"
puts [string trim  "picture.gif" .gif]

# string trimleft string ?chars?
puts "-----> trimleft"
puts [string trimleft "     Now is the time  "]

# string trimright string ?chars?
puts "-----> trimright"
puts [string trimright "     Now is the time   "]

# OBSOLETE SUBCOMMANDS
# string bytelength string
puts "-----> bytelength"
puts [string bytelength '1']

# string wordend string charIndex
puts "-----> wordend"
puts [string wordend "Now is the time" 2]
puts [string wordend "Now is the time" 1]
puts [string wordend "Now is the time" 3]
puts [string wordend "Now is the time" 4]
puts [string wordend "Now is the time" 6]

# string wordstart string charIndex
puts "-----> wordstart"
puts [string wordstart "Now is the time" 12]

