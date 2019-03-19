
# if [condition 1] then [body1] elseif [condition 2] else [body2]
# for [start] [test] (next) [body]
# foreach [varlist] [valuelist] [action]
# while [condition] [action]
# continue
# break
# ----------------

# if {$argc < 1} {
#     exit
# }

# set x [lindex $argv 0]
# if {$x == 1} {
#     puts "argv is 1"
# } elseif {$x == 2} {
#     puts "argv is 2"
# } else {
#     puts "others $x"
# }

# set n 100
# for {set i 0} {$i < $n} {incr i} {
#     puts "--> $i"
# }


# set numbers {1 2 3 4 5 6 7 8}
# foreach x $numbers {
#     puts " --> $x"
# }


set x 0
while {$x < 100} {
    puts "--> $x"
    incr x
}
