# catch eval error


puts -nonewline "enter a number: "
flush stdout
gets stdin value

puts "---> $value"

if {[catch {set doubled [expr $value * 2]} errmsg]} {
    # puts "$errmsg"
    puts "ErrorMsg:\n $errmsg"
    puts "ErrorCode:\n $errorCode"
    puts "ErrorInfo:\n $errorInfo\n"
} else {
    puts "$doubled"
}
