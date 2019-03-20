#! /usr/bin/tclsh

set clientaddr "127.0.0.1\r\n"
set clk [clock format [clock seconds]]
# puts "$clk"
# puts "$clientaddr"
set lng [expr [string bytelength $clk] + 2 + [string bytelength $clientaddr] + 2]
puts $lng
puts [string bytelength "\r\n"]
