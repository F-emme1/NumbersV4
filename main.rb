#ask the user for a count of numbers
#create an array that will hold the numbers that the user will input
puts "Lets play a numbers game. How many numbers would you like to enter? "
#do the following count number of times:
game_no = gets.chomp.to_i
positive_integers = [ ]
#ask user for positive integer value
#save user input as integer value in the next location in the array 

game_no.times do |i|
  i += 1
puts "The #{i} positive numba:  "
number = gets.chomp.to_i 
positive_integers << number 
end

puts "Compared to the last value, #{positive_integers[-1]}, here are the observations:"
positive_integers_count = positive_integers.length

positive_integers_count.times do |i|
   if positive_integers[i] == positive_integers[-1]
puts "The value at index #{i} is equal to the last value, #{positive_integers[-1]}."
elsif positive_integers[i] > positive_integers[-1]
  puts "The value at index #{i} is greater than the last value, #{positive_integers[-1]}."
else positive_integers[i] < positive_integers[-1]
  puts "The value at index #{i} is less than the last value, #{positive_integers[-1]}."
end 
i += 1 
end 

puts 
puts "The minimum value in the array is #{positive_integers.min}."
puts "The maximum value in the array is #{positive_integers.max}."

sum = positive_integers.reduce(0) do |previous, current|
  previous + current
end 

average = sum / positive_integers.length

puts "The average value in the array is #{average}."
#Maybe below didnt work because: i didnt have a seperate variable for the index and the value 
#could also do each_with_index method.
  #i = 0 
#positive_integers.each do |i|

 # if positive_integers[i] == positive_integers[-1]
#puts "The value at index #{[i]} is equal to the last value, #{positive_integers[-1]}."
#elsif positive_integers[i] > positive_integers[-1]
 # puts "The value at index #{i} is greater than the last value, #{positive_integers[-1]}."
#else positive_integers[i] < positive_integers[-1]
 # puts "The value at index #{i} is less than the last value, #{positive_integers[-1]}."
#end 
#i += 1
#end 

#seems that the program is confused with i being the index VALUE, not the index POSITION
#if i == positive_integers[-1],
#puts the value at index#{positive_integer[i]}
#is equal to the last value, #{positive_integers[-1]}"

#how do I correct this?

#tried to write positive_integers[i], but that didnt work?
#it seems that they need two different variables, but im not sure which. 

#go through EACH value in the array and compare each value to the LAST number entered by the user. 
#based on the comparison print the following: 

#if value in the array is less than the value of the last number entered, print to the terminal that the value at that index is LESS than the value at that last index 

#if  the value in the array is greater than the value of the last number entered, print to the terminal that the value at that index is GREATER than the value at that last index. 

#if the value in the array is EQUAL to the value of the last number entered, print to the terminal that the value at that index is EQUAL to the value at that last index. 

#print the Min value of array

#print the MAX value of array 

#print the average of array 
#(sum of all elements/count of all elements)


