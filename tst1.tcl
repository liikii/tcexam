# tclsh8.5 tst1.tcl dd dd ddd
if {$argc > 0} {
    puts "argv0: $argv0"
    puts "argc: $argc"
    puts "argv: $argv"
    puts "index: [lindex $argv 0]"
}
