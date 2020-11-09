#!/usr/bin/ruby
$curr_hsync = true
$curr_hblank = true
$hsync = Array.new(264) { |n| true }
$hblank = Array.new(264) { |n| true }
$q0 = Array.new(264) { |n| false }
$q1 = Array.new(264) { |n| false }
$q2 = Array.new(264) { |n| false }
$q3 = Array.new(264) { |n| false }
0.upto(264) { |n|	
	d = n.to_s(2).split("").map{ |i| i=="1"?true:false }.reverse()
	$q0[n] =         !d[7] || !d[6] ||  d[5] ||  d[4] || !d[3] ||  d[2] ||  d[1] ||  d[0] #  11001000
	$q1[n] =         !d[7] || !d[6] ||  d[5] || !d[4] ||  d[3] ||  d[2] || !d[1] ||  d[0] #  11010010
	$q2[n] =         !d[7] || !d[6] || !d[5] || !d[4] ||  d[3] ||  d[2] || !d[1] ||  d[0] #  11110010
	$q3[n] = !d[8] || d[7] ||  d[6] ||  d[5] ||  d[4] || !d[3] ||  d[2] ||  d[1] ||  d[0] # 100001000

	$curr_hsync = ($curr_hsync && $q1[n]) || !$q2[n]
	$hsync[n] = $curr_hsync

	$curr_hblank = ($curr_hblank && $q0[n]) || !$q3[n]
	$hblank[n] = $curr_hblank
}

print "q0:     "
0.upto(264) { |n|	
	print $q0[n] ? "#" : "_"
}
print "\n"

print "q1:     "
0.upto(264) { |n|	
	print $q1[n] ? "#" : "_"
}
print "\n"

print "q2:     "
0.upto(264) { |n|	
	print $q2[n] ? "#" : "_"
}
print "\n"

print "q3:     "
0.upto(264) { |n|	
	print $q3[n] ? "#" : "_"
}
print "\n"

print "hsync:  "
0.upto(264) { |n|	
	print $hsync[n] ? "#" : "_"
}
print "\n"

print "hblank: "
0.upto(264) { |n|	
	print $hblank[n] ? "#" : "_"
}
print "\n"