#! /usr/local/bin/tclsh8.6
package require Tk
set response [tk_dialog .my_dialog "Confirmation" "Do you wish to proceed?" "" 0 Yes No "Maybe Later"]
puts $response
