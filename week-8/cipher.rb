# Cipher Challenge

# I worked on this challenge by myself.
# I spent 3 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") 
# This method takes the coded_message, makes it all lowercase, splits each letter and space in it's own seperate string and this is all goes in a new variable called "input".
  # decoded_sentence = []
  # cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
  #           "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
  #           "g" => "c",
  #           "h" => "d",
  #           "i" => "e",
  #           "j" => "f",
  #           "k" => "g",
  #           "l" => "h",
  #           "m" => "i",
  #           "n" => "j",
  #           "o" => "k",
  #           "p" => "l",
  #           "q" => "m",
  #           "r" => "n",
  #           "s" => "o",
  #           "t" => "p",
  #           "u" => "q",
  #           "v" => "r",
  #           "w" => "s",
  #           "x" => "t",
  #           "y" => "u",
  #           "z" => "v",
  #           "a" => "w",
  #           "b" => "x",
  #           "c" => "y",
  #           "d" => "z"}

#   input.each do |x| # What is #each doing here?  The .each do is iterating through each letter in the coded_message.  
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?  The letters can't match, that is the point of the coded message.  If it's true, the loop breaks.
#     cipher.each_key do |y| # What is #each_key doing here?  This is iterating over the keys of the cipher hash.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?  x relates to the letters in the input/coded_message string, and y relates to the keys in the hash.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?  This is saying, if any of these non alphanumeric characters are in the coded input, replace them with a blank space
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a " do?  This creates an array => [0,1,2,3,4,5,6,7,8,9] and the elsif is asking if these 10 numbers are included in the coded_message/input
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for?  This is looking for a letter in the original coded message other than the integers and the characters listed above (@,#,$,%,^,&,*,0,1,2,3,4,5,6,7,8,9) such as a period or exclaimation point, and the code below is pushing this character into the decoded sentence.  
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?  This takes the array of single char strings and joins it together.  
# end

# Release 3: Refactor Original Code

# input.each do |original_message_letter| 
#     found_match = false  
#     cipher.each_key do |key_in_hash_letter| 
#       if original_message_letter == key_in_hash_letter  
#         decoded_sentence << cipher[key_in_hash_letter]
#         found_match = true
#         break
#       elsif original_message_letter == "@" || original_message_letter == "#" || original_message_letter == "$" || original_message_letter == "%"|| original_message_letter == "^" || original_message_letter == "&"|| original_message_letter =="*" #
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(original_message_letter)
#         decoded_sentence << original_message_letter
#         found_match = true
#         break
#       end
#     end
#     if not found_match 
#       decoded_sentence << original_message_letter
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
# end





# Your Refactored Solution

def dr_evils_cipher(coded_message, shift = 22)
  decoded_sentence = []
  alphabet = Array('a'..'z')
  encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
  new_code = coded_message.chars.map { |c| encrypter.fetch(c, " ") } 
  new_code = new_code.join("")
end

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!


# What concepts did you review or learn in this challenge?
# .zip is useful for combining collections in an ordered way. We’ll first call it with two collections, one as the message receiver and one as the message’s argument: array.zip(other_array) The order is irrelevant for now. .zip will return arrays made by combining the collections piece by piece:

# [1,2,3].zip(['a', 'b', 'c'])
#=> [[1, "a"], [2, "b"], [3, "c"]]

# .zip can also take 2 (or more) arguments to zip into the first:


# ['a', 'b', 'c'].zip( [1,2,3], ['oogie', 'boogie', 'woogie'] )
#=> [["a", 1, "oogie"], ["b", 2, "boogie"], ["c", 3, "woogie"]]

# .zip walks over each of the collections, collecting one element from each and returning the resulting collected array. It then repeats that process until it’s made one pass over each element from the collections. The resulting arrays from each of these passes is collected and returned as an array of those collected arrays. 



# What is still confusing to you about Ruby?
# I'm still not 100% sure about classes and instance variables.  I will have to practice


# What are you going to study to get more prepared for Phase 1?
# Reading more Eloquent Rubyist and working on my Treehouse track.  I've also discovered that I can get a free account on Lynda.com by using my SF library card.  Hooray!