proc main {pextlibname} {
	load $pextlibname

	set test_file /bin/sh
	set archs [list_archs $test_file]
	set libs [list_dlibs $test_file]

	set error 0
	if { $archs == "" } {
		puts "Arches are empty"
		set error 1
	}
	if { $libs == "" } {
		puts "Libs are empty $libs"
		set error 1
	}
	if { $error } {
		exit 1
	}
}

main $argv