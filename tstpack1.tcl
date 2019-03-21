#! /usr/bin/tclsh
package require Tk

# pack slave ?slave ...? ?options?
# pack configure slave ?slave ...? ?options?
#     -after other
#     -anchor anchor
#     -before other
#     -expand boolean
#     -fill style
#             none
#             x
#             y
#             both
#     -in other
#     -ipadx amount
#     -ipady amount
#     -padx amount
#     -pady amount
#     -side side
# pack forget slave ?slave ...?
# pack info slave
# pack propagate master ?boolean?
# pack slaves master
label .t -text "This widget is at the top"    -bg red
label .b -text "This widget is at the bottom" -bg green
label .l -text "Left\nHand\nSide" -bg gold
label .r -text "Right\nHand\nSide" -bg blue
text .mid 
.mid insert end "This layout is like Java's BorderLayout"
# Lay them out
pack .t   -side top    -fill x
pack .b   -side bottom -fill x
pack .l   -side left   -fill y
pack .r   -side right  -fill y
pack .mid -expand 1    -fill both
