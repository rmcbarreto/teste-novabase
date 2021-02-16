# Created by Ricardo Barreto -> rmcbarreto@gmail.com


##
# Create a modified string from the argument str
#
# Description
#   - given an string as program argument, sums 1 to the corresponding character (giving the next character) and in the vowels, convert to uppercase. The 'z' character is replaced by the 'a' character
#
# Example:
#   >> MudaLetras("hello*3")
#   => return: "Ifmmp*3"
#
# Arguments:
#   str: (String)
def MudaLetras(str)
  new_str = ""
  (0...str.length).each do |counter|
    if str[counter].ord.between?(97, 122) or str[counter].ord.between?(65, 90)
      if str[counter] == 'z'
        new_str[counter] = 'a'
      else
        # str[counter].ord -> converts to the corresponding integer in ASCII table
        new_str[counter] = (str[counter].ord + 1).chr
      end
    else
      new_str[counter] = str[counter]
    end
  end
  new_str.tr('aeiou', 'AEIOU')
end

p MudaLetras(ARGV[0])