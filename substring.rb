def substrings(dictionary,find_me)
	hash_count = Hash.new 0
	find_me = find_me.downcase.split(" ")
	
	find_me.each do |string|
		dictionary.each do |dict|
			if string.include?(dict)
				hash_count[dict] += 1
			end
		end
	end
	puts hash_count
end

dictionary = ["below","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(dictionary,"Howdy partner, sit down! How's it going?")
