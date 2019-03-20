#! /usr/bin/tclsh
proc Server {channel clientaddr clientport} {
   puts "Connection from $clientaddr registered"
   gets $channel var
   set p [lindex $var 1]
   if {[string equal $p /]} {

        set clk [clock format [clock seconds]]
        set lng [expr [string bytelength $clk] + [string bytelength $clientaddr] + 4]
        puts $channel "HTTP/1.1 200 OK"
        puts $channel "Date: Wed, 20 Mar 2019 07:51:32 GMT"
        puts $channel "Connection: Keep-Alive"
        # puts $lng
        puts $channel "Content-Length: $lng"
        puts $channel ""
        puts -nonewline $channel $clk
        puts -nonewline $channel "\n"
        puts -nonewline $channel $clientaddr
        puts -nonewline $channel "\n"
        close $channel 
   } else {
        puts $channel "HTTP/1.1 404 NotFound"
        close $channel
   }
}

socket -server Server 9900
vwait forever
