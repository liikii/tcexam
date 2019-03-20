#! /usr/bin/tclsh
# If regexp is a Find function, then regsub is equivalent to Find and Replace. 

#  regsub switches expression string substitution variable

# -all Causes the command to perform substitution for each match found The & and \n sequences are handled for each substitution
# -expanded Allows use of expanded regular expression wherein whitespace and comments are ignored
# -line Enables newline-sensitive matching similar to passing the –linestop and –lineanchor switches
# -linestop Changes the behavior of [^] bracket expressions so that they stop at newline characters
# -lineanchor Changes the behavior of ^ and $ (anchors) so that they match both the beginning and end of a line
# -nocase Treats uppercase characters in the search string as lowercase
# -start Allows speci cation of a character offset in the string from which to start matching


set original "one two one two one two"
regsub -all {one} $original three new
puts $new
