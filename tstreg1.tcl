#! /usr/bin/tclsh
# regexp switches expression string submatchvar submatchvar...
# regexp optionalSwitches patterns searchString fullMatch subMatch1 ... subMatchn
# puts "haha"
# -about No actual matching is made. Instead regexp returns a list containing information about the regular expression where the  rst element is a
# subexpression count and the second is a list of property names describing various attributes about the expression.
# -expanded Allows the use of expanded regular expression, wherein whitespaces and comments are ignored.
# -indices Returns a list of two decimal strings, containing the indices in the string to match for the  rst and last characters in the range.
# -line Enables the newline-sensitive matching similar to passing the –linestop and –lineanchor switches.
# -linestop Changes the behavior of [^] bracket expressions and the "." character so that they stop at newline characters.
# -lineanchor Changes the behavior of ^ and $ (anchors) so that they match both the beginning and end of a line.
# -nocase Treats uppercase characters in the search string as lowercase.
# -all Causes the command to match as many times as possible and returns the
# count of the matches found.
# -inline Causes regexp to return a list of the data that would otherwise have been placed in match variables.
# Match variables may NOT be used if –inline is speci ed.
# -start Allows us to specify a character index from which searching should start. -- Denotes the end of switches being passed to regexp.
# Any argument following this switch will be treated as an expression, even if they start with a "-".
regexp {([A-Z,a-z]*).([A-Z,a-z]*)} "Tcl Tutorial" a b c  
puts "Full Match: $a"
puts "Sub Match1: $b"
puts "Sub Match2: $c"
puts "\n"

regexp -nocase {([A-Z]*.([A-Z]*))} "Tcl Tutorial" a b c  
puts "Full Match: $a"
puts "Sub Match1: $b"
puts "Sub Match2: $c"
puts "\n"

regexp -nocase -line -- {([A-Z]*.([A-Z]*))} "Tcl \nTutorial" a b 
puts "Full Match: $a"
puts "Sub Match1: $b"
regexp -nocase -start 4 -line -- {([A-Z]*.([A-Z]*))} "Tcl \nTutorial" a b  
puts "Full Match: $a"
puts "Sub Match1: $b"
puts "\n"
