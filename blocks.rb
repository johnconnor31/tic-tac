line=File.read('blocks.txt')
	arr = line.split(", ")
	curr_dir= 0
	l=0
	r=0
	arr.each do |a|
		dir= a[0]
		len = a[1,a.length-1]
		puts dir,len

		case curr_dir
		when 0
			if dir == "R"
				r+=len.to_i
				curr_dir= (curr_dir+1)%4
			else
				r-=len.to_i
				curr_dir= (curr_dir-1)%4
				end
		when 1
		if dir == "R"
				l-=len.to_i
				curr_dir= (curr_dir+1)%4
			else
				l+=len.to_i
				curr_dir= (curr_dir-1)%4
				end
		when 2
		if dir == "R"
				r-=len.to_i
				curr_dir= (curr_dir+1)%4
			else
				r+=len.to_i
				curr_dir= (curr_dir-1)%4
				end
		when 3
			if dir == "R"
				l+=len.to_i
				curr_dir= (curr_dir+1)%4
			else
				l-=len.to_i
				curr_dir= (curr_dir-1)%4
				end
		else

	end
end

puts l.abs+r.abs