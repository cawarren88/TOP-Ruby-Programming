def caesar_cipher(phrase, key)
  
  shift = key % 26
  cipher_message = []
  
  phrase.split('').each do |i|
    
    if (i.ord >= 65)&&(i.ord <= 90)
	  unless (i.ord + shift) > 90
	    cipher_message.push((i.ord+shift).chr)
	  else
	    cipher_message.push((i.ord+shift-25).chr)
	  end
	
	elsif (i.ord >= 97)&&(i.ord <= 122)
	  unless (i.ord + shift) > 122
	    cipher_message.push((i.ord+shift).chr)
	  else
	    cipher_message.push((i.ord+shift-25).chr)
	  end
	
	else 
	  cipher_message.push(i)
	  
	end
  end

  puts cipher_message.join('')
end

caesar_cipher("This is my test phrase: ABCD", (2))