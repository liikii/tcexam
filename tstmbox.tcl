#! /usr/local/bin/tclsh8.6
package require Tk

set answer [tk_messageBox -message "Really quit?" -icon question -type yesno -detail "Select \"Yes\" to make the application exit"]
switch -- $answer {
    yes exit
    no {tk_messageBox -message "I know you like this application!" \
            -type ok}
}

