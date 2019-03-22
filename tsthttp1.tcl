#! /usr/local/bin/tclsh8.6
package require Tk
package require img::jpeg 
package require http

set handle [::http::geturl http://www.wellho.co.uk/robots.txt]
set body [::http::data $handle]
puts $body
