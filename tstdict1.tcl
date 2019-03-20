#! /usr/bin/tclsh
# dict create key value... key value... key value...
# dict option argument1 argument2...
set a [dict create 1 John]
puts $a
set b [dict create 1 John 2 Mary 3 Paul]
puts $b

# dict append name key value...
dict append b 4 Fred
puts $b


set names [dict create 1 John 2 Mary 3 Paul]
puts [dict exists $names 3]
puts [dict exists $names 4]



# dict filter dictionaryValue filter_type argument1 argument2 ...
# key:::
# dict filter dictionaryValue key ?globPattern ...?
# The key rule only matches those key/value pairs whose keys match any of the given patterns (in the style of string match.)
# script:::
# dict filter dictionaryValue script {keyVariable valueVariable} script
# The script rule tests for matching by assigning the key to the keyVariable and the value to the valueVariable, and then evaluating the given script which should return a boolean value (with the key/value pair only being included in the result of the dict filter when a true value is returned.) Note that the first argument after the rule selection word is a two-element list. If the script returns with a condition of TCL_BREAK, no further key/value pairs are considered for inclusion in the resulting dictionary, and a condition of TCL_CONTINUE is equivalent to a false result. The key/value pairs are tested in the order in which the keys were inserted into the dictionary.
# value::::
# dict filter dictionaryValue value ?globPattern ...?
# The value rule only matches those key/value pairs whose values match any of the given patterns (in the style of string match.)

set names [dict create 1 John 2 Mary 3 Paul]
set filtered [dict filter $names key 1]
puts $filtered

set names [dict create 1 John 2 Joe 3 Paul]
set filtered [dict filter $names value Jo*]
puts $filtered


set filtered [dict filter $names script {key value} {
  expr { $key < 3 }
}]
puts $filtered



# dict for {key value} dictionaryValue script
set names [dict create 1 John 2 Mary 3 Paul]
dict for {id data} $names {
    puts "Key $id : Value $data"
}


# dict get dictionaryValue key
set names [dict create 1 John 2 Mary 3 Paul]
puts [dict get $names 3]


# dict incr dictionaryValue key increment
set numbers [ dict create one 1 ]
puts [dict incr $numbers one 3]
puts $numbers



# dict info dictionaryValue
set names [dict create 1 John 2 Mary 3 Paul]
puts [dict info $names]


#  dict keys dictionaryValue pattern
set test [dict create 1 John 2 Mary 3 Paul]
puts [dict keys $test]

# dict lappend name key value...
set test [dict create 1 1 2 2 3 3]
dict lappend test 2 more
puts $test



# dict merge dictionaryValue1 dictionaryValue2...
set test1 [dict create 1 John 2 Mary 3 Paul]
set test2 [dict create 4 Fred 5 Sue 6 Tom]
set merged [dict merge $test1 $test2]
puts $merged


# dict remove dictionayValue key1... key2...
set test [dict create 1 John 2 Mary 3 Paul]
set new [dict remove $test 2]
puts $new



# dict set name key value... key value...
set test [dict create 1 John 2 Mary 3 Paul]
dict set test 2 Martha
puts $test



# dict size dictionaryValue
set test [dict create 1 John 2 Mary 3 Paul]
puts [dict size $test]

# dict values dictionaryValue
set test [dict create 1 one 2 two 3 three]
puts [dict values $test]


# dict with name keys... script
set person1 [dict create firstname John lastname Smith title Manager]
set person2 [dict create firstname Mary lastname Jones title Developer]
set record [dict create 12345 $person1 12346 $person2]
dict for {id info} $record {
    puts "Record #: $id"
    dict with info {
        puts "Title: $title"
        puts "Name: $lastname, $firstname"
    }
}
