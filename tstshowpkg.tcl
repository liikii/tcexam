#! /usr/local/bin/tclsh8.6
# package require Tk
package require S3
# package require img::jpeg 
# puts [package names]

# S3::Get ?-bucket bucketname? -resource resourcename ?
S3::Configure -accesskeyid AKIAONM5UZSG23CDECZA -secretaccesskey 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
S3::Get -bucket static.lbadvisor.com -resource "img/qctest430.jpeg" -content a
puts $a
