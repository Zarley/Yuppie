# must be baller and either furnished or rent cheaper than 2100
def rent?(baller, furnished, rent)
  if baller && (furnished || rent < 2100)
    return true
  else
    return false
  end
end

###
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is working as it should or not.
###

puts "Baller furnished ad low rent should be true: #{rent?(true,true, 2000)}"
puts "Baller, furnished , high rent should TRUE: #{rent?(true, true, 2200)}"
puts "Baller, not furnished, low rent should be true #{rent?(true, false, 2000)}"
puts "Baller, not furnished, high rent should be false #{rent?(true, false, 2300)}"
puts "Not Baller, furnished, low rent should be false #{rent?(false, true, 2000)}"
puts "Baller, not furnished, high rent should be false #{rent?(false, false, 2300)}"