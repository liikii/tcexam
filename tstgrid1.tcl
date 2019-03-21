#! /usr/bin/tclsh
package require Tk

encoding system unicode
puts [encoding names]
puts [encoding system]
# Make the widgets
# toplevel .t
text .txt -wrap none -xscroll { .h set} -yscroll { .v set }
scrollbar .v -orient vertical   -command { .txt yview}
scrollbar .h -orient horizontal -command { .txt xview}

# Lay them out
grid .txt .v -sticky nsew
grid .h        -sticky nsew

# Tell the text widget to take all the extra room
grid rowconfigure . .txt -weight 1
grid columnconfigure . .txt -weight 1
