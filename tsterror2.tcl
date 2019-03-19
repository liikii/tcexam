if { $argc == 2 } {
    # puts "$argv"
    set fname [lindex $argv 0]
    set pname [lindex $argv 1]
    set fflag [file readable $fname]
    # puts "check file is exists $fflag"
    if { $fflag != 1 } {
        puts "file not exist"
    } else {
        if {[catch {exec $pname $fname &} results options]} {
            puts "results: $results"
            puts "options: $options"
        }
    }
} else {
    puts "tclsh tsterror2.tcl filename texteditor"
}
