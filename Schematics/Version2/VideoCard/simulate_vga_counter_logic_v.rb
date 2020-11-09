#!/usr/bin/ruby
$curr_vsync = true
$curr_vblank = true
$vsync = Array.new(628) { |n| true }
$vblank = Array.new(628) { |n| true }
$q0 = Array.new(628) { |n| false }
$q1 = Array.new(628) { |n| false }
$q2 = Array.new(628) { |n| false }
$q3 = Array.new(628) { |n| false }
0.upto(628) { |n|	
	d = n.to_s(2).split("").map{ |i| i=="1"?true:false }.reverse()
	$q0[n] = !d[4] || !d[6] || !d[9] ||  d[0] ||  d[1] ||  d[2] || !d[3] ||  d[5]
	$q1[n] = !d[4] || !d[6] || !d[9] || !d[0] ||  d[1] ||  d[2] || !d[3] ||  d[5]
	$q2[n] = !d[4] || !d[6] || !d[9] || !d[0] ||  d[1] || !d[2] || !d[3] ||  d[5]
	$q3[n] = !d[4] || !d[6] || !d[9] ||  d[0] ||  d[1] || !d[2] ||  d[3] || !d[5]

	$curr_vsync = ($curr_vsync && $q1[n]) || (!$q2[n] && $q1[n])
	$vsync[n] = $curr_vsync

	$curr_vblank = ($curr_vblank || !$q3[n]) && $q0[n]
	$vblank[n] = $curr_vblank
}

print "q0:     "
0.upto(628) { |n|	
	print $q0[n] ? "#" : "_"
}
print "\n"

print "q1:     "
0.upto(628) { |n|	
	print $q1[n] ? "#" : "_"
}
print "\n"

print "q2:     "
0.upto(628) { |n|	
	print $q2[n] ? "#" : "_"
}
print "\n"

print "q3:     "
0.upto(628) { |n|	
	print $q3[n] ? "#" : "_"
}
print "\n"

print "vsync:  "
0.upto(628) { |n|	
	print $vsync[n] ? "#" : "_"
}
print "\n"

print "vblank: "
0.upto(628) { |n|	
	print $vblank[n] ? "#" : "_"
}
print "\n"