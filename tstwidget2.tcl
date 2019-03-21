#! /usr/bin/tclsh
package require Tk

proc list_add { } {
       set s [ .e get ]
       .l insert end $s
       .e delete 0 end
}

image create photo logo -file "/Users/lbadvisor/tmp/gaga1a.gif" -width 400 -height 400
label .logo -image logo
listbox .l -borderwidth 3 -width 25 -height 10
entry .e -width 25
frame .f -width 25 -borderwidth 2 -relief groove
button .f.update -text "Add" -command list_add
button .f.exit -text "Exit" -command exit

# n, ne, e, se, s, sw, w, nw, or center
pack .logo -side top -anchor w
# pack .l -side top -anchor e
pack .l -side top -fill both
pack .f -side bottom -padx 2 -pady 2 -fill both
pack .f.update -side left
pack .f.exit -side right
pack .e -side bottom
