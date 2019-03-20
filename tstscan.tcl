#! /usr/bin/tclsh
# scan string format variable variable variable...


# d decimal integer. 
# o octal integer.
# u unsigned decimal string.
# s string 
# x hexadecimal integer
# i integer
# c unicode value.
# e or f or g or E or G: floating-point number
# [chars] one or more characters in chars. 
# [^chars] one or more characters not in
# n No input is consumed from the input string.

set color #34aa44
scan $color #%2x%2x%2x r g b
puts "$r $g $b"


set char "x"
set value [scan $char %c]
puts "$value"


set string "08:11"
# scan $string "%d:%d" hours minutes
# puts "$hours $minutes"
if {[scan $string "%d:%d" hours minutes] != 2} {
    error "not a valid time string"
} else {
    puts "time:  $hours $minutes"
}


set string "5.2,-4e-2a"
scan $string "%f,%f%c" x y z
puts "$x $y $z"

