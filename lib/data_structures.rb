# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  (arr.min...arr.max).to_a.length
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  arr == arr.sort
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  vowels = "aeiou"
  count = 0
  str.downcase.chars {|vowel| count += 1 if vowels.include?(vowel)}
  count
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  str.downcase.delete("aeiou")
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  int.to_s.chars.sort.reverse
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
	letters = str.downcase
  letters.chars {|letter| return true if letters.count(letter) > 1 }
  false
end

# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr)
  number = arr.join
  "(#{number[0..2]}) #{number[3..5]}-#{number[6..-1]}"
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  digits = str.scan(/\d+/).sort
  (digits[0]...digits[-1]).to_a.length
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  arr.rotate(offset)
end
