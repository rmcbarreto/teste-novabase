# Created by Ricardo Barreto -> rmcbarreto@gmail.com


##
# Return the sum of the multiples values of 3 and 5 bellow 'max'
#
# Example:
#   >> Multiplo3_5(10)
#   => return: 23
#
# Arguments:
#   max: (Integer)
def Multiplo3_5(max)
  multiples = []

  (1..max).each do |item|
    multiple_3 = 3*item
    multiple_5 = 5*item
    if (multiple_5 < max)
      multiples << multiple_3
      multiples << multiple_5
    elsif (multiple_3 < max)
      multiples << multiple_3
    else
      break
    end
  end
  return multiples.inject(0){|sum,x| sum + x }
end

p Multiplo3_5(ARGV[0].to_i)