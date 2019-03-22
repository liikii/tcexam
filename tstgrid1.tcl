#! /usr/local/bin/tclsh8.6
# NAME
# grid — Geometry manager that arranges widgets in a grid
# SYNOPSIS
# DESCRIPTION
# grid slave ?slave ...? ?options?
# grid anchor master ?anchor?
# grid bbox master ?column row? ?column2 row2?
# grid columnconfigure master index ?-option value...?
# grid configure slave ?slave ...? ?options?
#     -column n
#     -columnspan n
#     -in other
#     -ipadx amount
#     -ipady amount
#     -padx amount
#     -pady amount
#     -row n
#     -rowspan n
#     -sticky style
# grid forget slave ?slave ...?
# grid info slave
# grid location master x y
# grid propagate master ?boolean?
# grid rowconfigure master index ?-option value...?
# grid remove slave ?slave ...?
# grid size master
# grid slaves master ?-option value?

package require Tk
# example 1
# encoding system unicode
# puts [encoding names]
# puts [encoding system]
# # Make the widgets
# # toplevel .t
# text .txt -wrap none -xscroll { .h set} -yscroll { .v set }
# scrollbar .v -orient vertical   -command { .txt yview}
# scrollbar .h -orient horizontal -command { .txt xview}

# # Lay them out
# grid .txt .v -sticky nsew
# grid .h        -sticky nsew

# # Tell the text widget to take all the extra room
# grid rowconfigure . .txt -weight 1
# grid columnconfigure . .txt -weight 1

# example 2
# button .b -text "Foo"
# entry .e -textvariable foo
# label .l -text "This is a fairly long piece of text"

# grid .b .e .l -sticky ew
# grid columnconfigure . "all" -uniform allTheSame

# example 3
# entry .e -width 10
# label .1 -text ONE
# label .2 -text two
# label .3 -text three
# button .b -text Exit -command exit

# grid .e -row 0 -column 2
# grid .1 -row 1 -column 0
# grid .2 -row 1 -column 1
# grid .3 -row 1 -column 3
# grid .b -row 2 -column 2

# example 4
# frame .f -borderwidth 3 -relief raised
# entry .f.e -width 10
# label .f.1 -text ONE
# label .f.2 -text TWO
# label .f.3 -text THREE
# button .f.b -text Exit -command exit


# pack .f
# grid .f.e -row 0 -column 2
# grid .f.1 -row 1 -column 0
# grid .f.2 -row 1 -column 1
# grid .f.3 -row 1 -column 2
# grid .f.b -row 2 -column 2

# example 5

frame .main -borderwidth 1 -relief solid -padx 10 -pady 10


entry .main.efirst -width 25
entry .main.elast -width 25
entry .main.eaddress -width 50
entry .main.ecity -width 25
entry .main.estate -width 3
entry .main.ezip -width 5
entry .main.ephone -width 25

label .main.first -text "First Name"
label .main.last -text "Last Name"
label .main.address -text "Address"
label .main.city -text "City"
label .main.state -text "ST"
label .main.zip -text "Zip"
label .main.phone -text "Phone"
label .main.photo -text "Photo" -width 15

label .main.picture -width 10 -height 10 -borderwidth 3 -background black

button .main.previous -text "Previous" -width 15
button .main.next -text "Next" -width 15
button .main.add -text "Add" -width 15
button .main.save -text "Save" -width 15
button .main.delete -text "Delete" -width 15
button .main.exit -text "Exit" -width 15 -command exit


pack .main

# bell -nice
# bell -nice
# bell -nice
# bell -nice

grid .main.efirst -row 0 -column 0 -sticky nw
grid .main.elast -row 0 -column 1 -columnspan 2 -sticky nw
grid .main.picture -row 0 -column 3 -rowspan 7 -sticky nw
grid .main.first -row 1 -column 0 -sticky nw
grid .main.last -row 1 -column 1 -columnspan 2 -sticky nw
grid .main.eaddress -row 2 -column 0 -columnspan 3 -sticky nw
grid .main.address -row 3 -column 0 -columnspan 3 -sticky nw
grid .main.ecity -row 4 -column 0 -sticky nw
grid .main.estate -row 4 -column 1 -sticky nw
grid .main.ezip -row 4 -column 2 -sticky nw
grid .main.city -row 5 -column 0 -sticky nw
grid .main.state -row 5 -column 1 -sticky nw
grid .main.zip -row 5 -column 2 -sticky nw
grid .main.ephone -row 6 -column 0 -columnspan 2 -sticky nw
grid .main.phone -row 7 -column 0 -columnspan 2 -sticky nw
grid .main.photo -row 7 -column 3 -sticky nw
grid .main.previous -row 8 -column 0 -sticky ne
grid .main.next -row 8 -column 2 -sticky nw
grid .main.add -row 9 -column 0 -sticky ne
grid .main.save -row 9 -column 1 -sticky nw
grid .main.delete -row 9 -column 2 -sticky nw
grid .main.exit -row 9 -column 3 -sticky nw
